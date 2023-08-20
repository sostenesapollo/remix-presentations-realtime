import { createCookieSessionStorage, redirect } from "@remix-run/node";
// import invariant from "tiny-invariant";
import type { CompanyBase, ProfileType, User, UserBaseCompanies } from "@prisma/client";

// invariant(process.env.SESSION_SECRET, "SESSION_SECRET must be set");

export type userFromCookie = (User & { UserBaseCompanies: UserBaseCompanies[]; }) | null
export type createUserSessionParams = {
  request: Request;
  user:  (User & {
    UserBaseCompanies: (UserBaseCompanies & {
        CompanyBase: CompanyBase;
    })[];
  }) | null
  remember: boolean;
  redirectTo: string;
  has_multiple_company_bases?: boolean
}

export type CookieParams = {
  id: string,
  company_base_id: string,
  company_id: string,
  business_type: string,
  name: string,
  profile_type: ProfileType,
  city_id: string,
  has_multiple_company_bases: boolean
}

export const sessionStorage = createCookieSessionStorage({
  cookie: {
    name: "__session",
    httpOnly: true,
    path: "/",
    sameSite: "lax",
    // secrets: [process.env.SESSION_SECRET],
    secure: process.env.NODE_ENV === "production",
  },
});

export async function getSession(request: Request) {
  const cookie = request.headers.get("Cookie");
  return sessionStorage.getSession(cookie);
}

export async function getUser(request: Request): Promise<CookieParams> {
  const session = await getSession(request);
  return session.data as any
}

export const getRequestUser = async (request: Request) => getUser(request)

const setSessionValues = async ({request, ...params}: {request: any , fields: CookieParams}) => {
  const session = await getSession(request);
  for(let [key, value] of Object.entries(params?.fields)) {
    session.set(key, value)
  }
  return session
}

export async function createUserSession({ request, remember, ...params }: createUserSessionParams) {
  if(!params.user) return;
  
  if(!params.user.UserBaseCompanies[0]?.CompanyBase?.city_id) throw new Error('Cidade da empresa não definida')

  const session = await setSessionValues({ request, fields: {
    id: params.user?.id,
    company_base_id: params?.user.UserBaseCompanies[0]?.company_base_id,
    company_id: params.user?.UserBaseCompanies[0]?.company_id,
    business_type: params.user.UserBaseCompanies[0]?.CompanyBase.company_business_type,
    name: params.user.name,
    profile_type: params.user.profile_type,
    city_id: params.user.UserBaseCompanies[0]?.CompanyBase?.city_id,
    has_multiple_company_bases: params?.has_multiple_company_bases === true
  }})

  const cookie = await sessionStorage.commitSession(session, {
    maxAge: remember
      ? 60 * 60 * 24 * 7 // 7 days
      : undefined,
  })
  
  if(params.redirectTo) {
    console.log('401');
    
    return redirect(params.redirectTo, {
      status: 401,
      headers: {
        "Set-Cookie": cookie
      }
    })
  }
  
  return { cookie }
  
}

export async function logout(request: Request) {
  const session = await getSession(request);
  
  return redirect("/auth/login?logged_out=.", {
    headers: {
      "Set-Cookie": await sessionStorage.destroySession(session),
    },
  });
}
