import type { 
    ActionArgs as _ActionArgs,
    ActionFunction as _ActionFunction,
    LoaderArgs as _LoaderArgs,
    LoaderFunction as _LoaderFunction
} from "@remix-run/server-runtime";

export type ActionArgs = _ActionArgs & {context: any }
export type LoaderArgs = _LoaderArgs & {context: any }
export type ActionFunction = _ActionFunction
export type LoaderFunction = _LoaderFunction