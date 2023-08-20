import { useLoaderData } from "@remix-run/react";
import { useEffect, useState } from "react"
import type { Socket } from "socket.io-client"
import type { DefaultEventsMap } from "socket.io/dist/typed-events"
import { connect } from "~/ws.client"
var ip = require('ip');

const exampleSong = {
  title: 'Raspberry Beret',
  artist: 'Prince',
  lyrics: `
    Blank line
    
    Um Deus rodeado de Glória
    És adorado 24 horas
    Os serafins cantam: Santo, Santo
    Incansavelmente, Santo, Santo

    E eu, um homem tão falho
    E de impuros lábios
    O que um Deus tão grande assim
    Viu de importante em mim?
    
    Então me toca com essas brasas do altar
    E me transforma, vem me purificar
    Então me toca com essas brasas do altar
    E me transforma, vem me purificar
    
    Eis-me aqui, estou disponível
    Então usa-me, me fiz exclusivo só pra Te servir
    Meu Deus, envia-me, oh
    
    E como dizer não para o Teu chamado
    Se me deste unção para ser usado
    Pra Tua glória, oh, somente pra Tua glória
    
    Então me toca com essas brasas do altar
    E me transforma, vem me purificar
    Então me toca com essas brasas do altar
    E me transforma, vem me purificar
    
    E eis-me aqui, estou disponível
    Então usa-me (peça, peça, peça!), me fiz exclusivo só pra Te servir
    Meu Deus, envia-me
    Como eu poderia dizer não?
    
    Como dizer não para o Teu chamado
    Se me deste, me revestisse de unção para ser usado
    Pra Tua glória, pra Tua glória, meu Deus, oh somente pra Tua glória, oh
    Somente pra Tua glória
    
    A glória é Tua, Tua e de mais ninguém
    Toda essa unção, é pra Tua glória, é pra Tua glória
    
    Geração eleita (eis-me aqui)
    Sacerdócio real (oh, diga!) (eis-me aqui)
    Povo exclusivo de Deus (eis-me aqui)
    Nação santa
    
    Geração eleita (eis-me aqui)
    Sacerdócio real (eis-me aqui)
    Povo exclusivo de Deus, vai, vai (eis-me aqui)
    Nação santa, santa, santa, diga!
    
    (Eis-me aqui, estou disponível)
    (Então usa-me, me fiz exclusivo só pra Te servir)
    Envia-me, eu estou aqui, eu estou aqui pra Ti
    
    Como dizer não para o Teu chamado
    Se me deste unção para ser usado
    Pra Tua glória, somente pra Tua glória
    
    Somente pra Tua glória
    Somente pra Tua  glória (a glória é toda Tua e de mais ninguém)
    Somente pra Tua glória (de mais ninguém)
    
    Hoje e para sempre, amém, pelos séculos dos séculos, a glória é Tua, Tua
    Não importa o quão falho eu sou, a glória é Tua, a glória é Tua, a glória é Tua, é Tua, Tua, Tua, Tua

    Somente pra Tua glória
    Somente pra Tua glória
    Somente pra Tua glória
    (Somente pra Tua glória) oh, oh, oh
    `
}

export function loader () {
  return {ip: ip.address()}
}

function formatSongBlocks(song: string) {
  let blocks = [] as string[][]
  let currentBlock = [] as string[]
  song.trim().split('\n').map(line => {
    currentBlock.push(line)
    if(line.trim().length === 0) {
      currentBlock = []
      blocks.push(currentBlock)
    }
  })
  return blocks
}

export default function () {
  const data = useLoaderData() as {ip: string}
  const [activeSongBlock, setActiveSongBlock] = useState(0)
  const [songBlocks, setSongBlocks] = useState(formatSongBlocks(exampleSong.lyrics))

  const nextSongBlock = () => {
    if(!songBlocks[activeSongBlock + 1]) return
    setActiveSongBlock(activeSongBlock + 1)
  }

  const previousSongBlock = () => {
    if(!songBlocks[activeSongBlock - 1]) return
    setActiveSongBlock(activeSongBlock - 1)
  }

  const handleKeyDown = (e: any) => {
    if (e.key === 'ArrowLeft') previousSongBlock()
    if (e.key === 'ArrowRight') nextSongBlock()
  };

  useEffect(() => {
    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [activeSongBlock]);

  const [socket, setSocket] = useState<Socket<DefaultEventsMap, DefaultEventsMap>>();

  useEffect(() => {
    let connection = connect(data.ip);
    setSocket(connection);
    return () => { connection.close(); };
  }, []);

  useEffect(()=>{
    if(!socket) return;

    socket.on('data', (data)=>{
      console.log(data);
      switch(data?.action) {
        case 'back': previousSongBlock(); break
        case 'next': nextSongBlock(); break
        default: break
      }
    })

    return () => socket?.off()

  }, [socket, songBlocks, activeSongBlock])

  return (
    <div className="flex justify-center items-center h-screen bg-gradient-to-r from-cyan-500 to-blue-500 text-center ">
      <div className="text-center text-white text-6xl whitespace-pre-line">
        {songBlocks[activeSongBlock].map((line, index) => (
          <p className="py-2" key={index}>{line}</p>
        ))}
      </div>
    </div>
  )
}