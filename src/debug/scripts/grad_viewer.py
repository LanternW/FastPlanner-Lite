#!/usr/bin/env python
# -*- coding: UTF-8 -*-


import rospy
import pygame
from pygame.locals import * 
import sys

from std_msgs.msg import Int16

pygame.init()
pygame.display.set_caption('grad viewer')

SCREEN_SIZE = SCREEN_WIDTH, SCREEN_HEIGHT = 300, 300  # 设置窗口大小
BASE_SCREEN = pygame.display.set_mode(SCREEN_SIZE)  # 底层窗口

Z = 1
msg_pub = None
font_Basis_s = pygame.font.SysFont("SimHei",72)

def render():
    BASE_SCREEN.blit(font_Basis_s.render(str(Z), True, (255,255,100)), (SCREEN_WIDTH/2 , SCREEN_HEIGHT/2))

def pubTopic():
    global msg_pub,Z
    msg = Int16()
    msg.data = Z
    msg_pub.publish(Z)

def main():
    global msg_pub,Z
    rospy.init_node("GRAD_VIEWER",anonymous=True)
    #rospy.Subscriber("/TOPICNAME", TOPIC , CALLBACK)
    msg_pub = rospy.Publisher("/renderGrad",Int16,queue_size=10)

    while True:  # 主循环

        for event in pygame.event.get():  # 遍历所有事件
            if event.type == pygame.KEYDOWN:
                if event.key == K_w:
                    Z = Z+1
                elif event.key == K_s:
                    Z = Z-1
                elif event.key == K_b:
                    pubTopic()
                elif event.key == K_q:
                    pygame.quit()


        pygame.display.update()
        pygame.time.wait(2)
        pygame.draw.rect(BASE_SCREEN,(0,0,0),((0,0) ,SCREEN_SIZE),0)
        render()
    
    rospy.spin()	

if __name__ == "__main__":
    main()
