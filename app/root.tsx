/* eslint-disable react-hooks/exhaustive-deps */
import { cssBundleHref } from "@remix-run/css-bundle";
import type { LinksFunction} from "@remix-run/node";
import { redirect } from "@remix-run/node";
import { json } from "@remix-run/node";
import {
  Links,
  LiveReload,
  Meta,
  Outlet,
  Scripts,
  ScrollRestoration,
  isRouteErrorResponse,
  useLoaderData,
  useNavigate,
  useRouteError,
} from "@remix-run/react";
// import NotificationSound from "../public/confetti.mp3";
// import { getUser } from "~/session.server";
import stylesheet from "~/tailwind.css";
import { useEffect, useRef, useState } from "react";
import { metaV1 } from '@remix-run/v1-meta';

export function meta(args: any) {
  return metaV1(args, {
    title: "PedeGás",
    description: "Faça seu pedido do seu gás agora mesmo, de forma rápida e fácil.",
    "og:title": "Pedegás - realize seu pedido de gás online",
  });
}

export const links: LinksFunction = () => [
  { rel: "stylesheet", href: stylesheet },
  ...(cssBundleHref ? [{ rel: "stylesheet", href: cssBundleHref }] : []),
];

export async function loader({ request }: any) {
  const url = new URL(request.url);
  const path = url.pathname;

  const logged_out = url.searchParams.get('logged_out');

  if(path === '/dashboard') {
      return redirect('/auth/login');
  }
  
  // todo: DEIXAR CACHEADO ISSO AQUI, verificar se está pegando do banco de dados ou se está pegando do cookie
  // const user = await getUser(request) as any

  // return json({ user, logged_out: !!logged_out });
  return {}
}

export function ErrorBoundary() {
  const error = useRouteError() as any;

  console.error('Error detected:', error);
  console.log(error?.message);
  console.log(error?.stack);
  
  if (isRouteErrorResponse(error)) {
    console.error('Error message:', error?.data);
    console.error('Error Status:', error?.status);
    console.error('Error Status Text:', error?.statusText);
    return (
      <div>
        <h1>
          {error.status} {error.statusText}
        </h1>
        <p>{error.data}</p>
      </div>
    );
  } else if (error instanceof Error) {
    console.error('Generic Error Message:', error?.message);
    console.error('Generic Error Name:', error?.name);
    console.error('Generic Error Stack:', error?.stack);
    return (
      <html>
      <head>
        <title>Erro</title>
        <Meta />
        <Links />
      </head>
      <body>  
        <div>
          <div className="sm:text-center lg:text-left m-10">
            <h4 className="text-4xl tracking-tight font-extrabold text-gray-900 sm:text-5xl md:text-6xl">
              <span className="block xl:inline">
                ❌ Erro interno
              </span>
            </h4>
            {/* <h2 className="text-5md tracking-tight font-semibold text-gray-900 sm:text-3md md:text-6md mt-4">
              <span className="block xl:inline pt-6 pb-6">
                🤦 Eita
              </span>
            </h2> */}
            <h1 className="text-3 tracking-tight font-semibold text-gray-900 sm:text-3md md:text-6md mt-4">
              <span className="block text-2xl xl:inline pt-4">
                Aconteceu algo de errado
                <p>mas já estamos trabalhando para resolver.</p>
              </span>
            </h1>
            
            <p className="mt-3 text-base text-gray-500 sm:mt-5 sm:text-lg sm:max-w-xl sm:mx-auto md:mt-5 md:text-xl lg:mx-0"></p>
            
            <div className="mt-5 sm:mt-8 sm:flex sm:justify-center lg:justify-start">
              <div className="rounded-md shadow">
                
                <a href="/auth/login" className="w-full flex items-center justify-center px-8 py-3 border border-transparent text-base font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 md:py-4 md:text-lg md:px-10">
                  Voltar ao sistema
                </a>
              </div>
            </div>

            <p className="pt-10">{error.message}</p>
            <p>The stack trace is:</p>
            <pre>{error.stack}</pre>

          </div>
        </div>
      </body>
      </html>
    );
  } else {
    return <h1>Unknown Error</h1>;
  }
}

export default function App() {
  return (
    <html lang="en">
      <head>
        <meta charSet="utf-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1" />
        <Meta />
        <Links />
      </head>
      <body>
          <Outlet/>
          <ScrollRestoration />
          <Scripts />
          <LiveReload />
      </body>
    </html>
  );
}
