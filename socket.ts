import { Server } from "socket.io";
import { sessionStorage } from "~/session.server";

let socket: Server;

export const getCompanyOnlyGroup = (company_id: number) => `company/${company_id}`

export const createSocketIOInstance = (httpServer: any) => {
    const io = new Server(httpServer, {
        cors: { origin: true }
    });

    io.on('connection', async (socket: any) => {
        console.log('new connection');
        

        socket.on('disconnect', () => {
            console.log(`🔴 Socket ${socket.id} left`);
        })

        socket.on('data', (data: any) => {
            socket.broadcast.emit('data', data);
        })
    })

    return io;
};

export const getSocketIOInstance = () => {
  return socket;
};