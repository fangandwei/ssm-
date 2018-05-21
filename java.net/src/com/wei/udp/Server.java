package com.wei.udp;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

public class Server {
	public static void main(String[] args) throws IOException {
/*
		绑定8800端口获取，接收数据
		
		*/
		DatagramSocket sok=new DatagramSocket(8800);
		//2.创建数据报，用于接收客户端发送的数据
    	byte [] data=new byte [1024];
    	DatagramPacket pac=new DatagramPacket(data ,data.length ) ;
        // 3.接收客户端发送的数据
        System.out.println("****服务器端已经启动，等待客户端发送数据");
        sok.receive(pac);// 此方法在接收到数据报之前会一直阻塞
        // 4.读取数据
        String info = new String(data, 0, pac.getLength());
        System.out.println("我是服务器，客户端说：" + info);

    	
        /*
         * 向客户端响应数据
         */
        // 1.定义客户端的地址、端口号、数据
        InetAddress address = pac.getAddress();
        int port = pac.getPort();
        byte[] data2 = "欢迎您!".getBytes();
        // 2.创建数据报，包含响应的数据信息
        DatagramPacket packet2 = new DatagramPacket(data2, data2.length, address, port);
        // 3.响应客户端
        sok.send(packet2);
        // 4.关闭资源
        sok.close();
    }
	}


