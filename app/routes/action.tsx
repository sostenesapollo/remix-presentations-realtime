import { useLoaderData } from "@remix-run/react";
import { useEffect, useState } from "react";
import type { Socket } from "socket.io-client";
import type { DefaultEventsMap } from "socket.io/dist/typed-events";
import type { ActionFunction } from "~/props-types";
import { connect } from "~/ws.client";
var ip = require('ip');

export function loader () {
    return {ip: ip.address()}
}

export default function () {
    const data = useLoaderData() as {ip: string}
    const [socket, setSocket] = useState<Socket<DefaultEventsMap, DefaultEventsMap>>();

    useEffect(() => {
        let connection = connect(data.ip);
        setSocket(connection);
        return () => { connection.close(); };
    }, []);

    const sendBack = () => {
        socket?.emit('data', { action: 'back', calebe: true })
    }

    const sendNext = () => {
        socket?.emit('data', { action: 'next' })
    }

    return(
        <section className="text-center mt-10">
            <div className="space-x-2">
                <button 
                    className="bg-blue-500 text-white hover:bg-blue-300 text-xs font-semibold rounded-lg px-4 py-3"
                    onClick={sendBack}
                >
                    Voltar
                </button>
                <button
                    className="bg-blue-500 text-white hover:bg-blue-300 text-xs font-semibold rounded-lg px-4 py-3"
                    onClick={sendNext}
                >
                    Avançar
                </button>
            </div>
        </section>
    )
}