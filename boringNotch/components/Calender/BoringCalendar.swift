//
//  BoringCalender.swift
//  boringNotch
//
//  Created by Vivaan Singh on 08/09/24.
//

import EventKit
import SwiftUI
import Defaults

struct CalendarView: View {
    var body: some View {

            VStack(spacing: 5) {
                Spacer()
                HStack(spacing: 10){
                    Image("windows")
                        .resizable() // This allows the image to be resized
                        .frame(width: 60, height: 60) // This sets the size of the image
                    Image("catalina")
                        .resizable() // This allows the image to be resized
                        .frame(width: 50, height: 50) // This sets the size of the image
                    
                    Image("bigsur")
                        .resizable() // This allows the image to be resized
                        .frame(width: 45, height: 45) // This sets the size of the image
                }
                Spacer()
                HStack(spacing: 10) {
                    
                    Button(action: {
                        // Action for Button 1
                        print("Button 1 pressed")
                        func shell(_ command: String) {
                            let task = Process()
                            let pipe = Pipe()
                            
                            task.standardOutput = pipe
                            task.standardError = pipe
                            task.arguments = ["-c", command]
                            task.launchPath = "/bin/zsh"
                            task.standardInput = nil
                            task.launch()
                            
                            let data = pipe.fileHandleForReading.readDataToEndOfFile()
                            let output = String(data: data, encoding: .utf8)
                            print(output)
                                                    
                            
                            
                        }

                        shell("echo 'Your admin password' | sudo -S bless --device /dev/disk0s4 --setBoot")
                        shell("echo 'Your admin password' | sudo -S shutdown -r now")
                    }) {
                        
                        Text("Windows")
                    }
                    
                    Button(action: {
                        // Action for Button 2
                        print("Button 2 pressed")
                        func shell(_ command: String) {
                            let task = Process()
                            let pipe = Pipe()
                            
                            task.standardOutput = pipe
                            task.standardError = pipe
                            task.arguments = ["-c", command]
                            task.launchPath = "/bin/zsh"
                            task.standardInput = nil
                            task.launch()
                            
                            let data = pipe.fileHandleForReading.readDataToEndOfFile()
                            let output = String(data: data, encoding: .utf8)
                            print(output)
                                                    
                            
                            
                        }
                        shell("echo 'Your admin password' | sudo -S bless --device disk2s7 --setBoot")
                        shell("sudo shutdown -r now")
                        
                    }) {
                        Text("Catalina")
                    }
                    
                    Button(action: {
                        // Action for Button 3
                        print("Button 3 pressed")
                        func shell(_ command: String) {
                            let task = Process()
                            let pipe = Pipe()
                            
                            task.standardOutput = pipe
                            task.standardError = pipe
                            task.arguments = ["-c", command]
                            task.launchPath = "/bin/zsh"
                            task.standardInput = nil
                            task.launch()
                            let data = pipe.fileHandleForReading.readDataToEndOfFile()
                            let output = String(data: data, encoding: .utf8)
                            print(output)
                                                    
                            
                            
                        }
                        shell("echo 'Your Admin Password' | sudo -S bless --device disk2s5 --setBoot")
                        shell("echo 'Your Admin Password' | sudo -S shutdown -r now")
                    }) {
                        Text("Sequoia")
                    }
                }
                .padding()
            }
        }
    }

#Preview {
    CalendarView()
        .frame(width: 250)
        .padding(.horizontal)
        .background(.black)
}
