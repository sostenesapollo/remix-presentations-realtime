import io from "socket.io-client";

export function connect(ip: string) {


  // let WS_SERVER = 'http://localhost:3001'
  let WS_SERVER = `${ip}:3001`
  
  console.log(`⚡ WS SERVER: ${WS_SERVER}`);

  return io(WS_SERVER, 
    { transports: ["websocket"] }
  );
}