export const createPrinterService = (io: any, {
    activePrintersBySocket,
    activePrintersByCompanyBase,
    activePrintersByCompany,
    counterConnection
}: any) => {

    io.on('connection', async (socket: any) => {
        counterConnection++
        // console.log(`Socket ${socket.id} connected`);
    
        socket.on('register_printer', (data: any) => { 
            console.log('register printer', data);
            
            if(data?.company_base_id) {
                console.log(`Registering printer for ${socket.id} `, data);
                activePrintersBySocket.set(socket.id, {...data, socket})
                activePrintersByCompanyBase.set(data?.company_base_id, [...(activePrintersByCompanyBase.get(data?.company_base_id) || []), socket.id])
                activePrintersByCompany.set(data?.company_id, [...(activePrintersByCompany.get(data?.company_id) || []), socket.id])
            }else {
                console.log('register_printer with no company base id');
            }
        });
    
        socket.on('disconnect', (disconnected: any) => { 
          counterConnection--
          // console.log(`Socket ${socket.id} disconnected`);
          const _socket = activePrintersBySocket.get(socket.id)
          if(_socket) {
            activePrintersBySocket.set(socket.id, null)
            activePrintersByCompanyBase.set(_socket.company_base_id, [])
            activePrintersByCompany.set(_socket.company_id, [])
          }
        });
    
        socket.on('error', (error: any) => { 
          console.log(`Socket ${socket.id} error ${error}`);
        });
    
    });
};