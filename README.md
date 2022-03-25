# NearbyInteraction
NINearby配件配置,使用标识符、距离和方向定位附近的设备并与之交互。实现与第三方配件的空间交互 与附近的配件建立连接，以接收定期测量其与用户之间的距离。

UWB文档说明

Apple参考：https://developer.apple.com/documentation/nearbyinteraction/

1.使用标识符、距离和方向定位附近的设备并与之交互。
Locate and interact with nearby devices using identifiers, distance, and direction.
2.NINearby配件配置
使用此类与您合作或开发的第三方配件进行交互。
发现附件并创建配置要开始交互，您的应用会发现附近的配件，并使用您选择的技术（如Core Bluetooth、本地网络或安全的 Internet 连接）建立双向数据链接。
3.实现与第三方配件的空间交互
与附近的配件建立连接，以接收定期测量其与用户之间的距离。
4.Demo实现功能如下：
1.消息互动
以发送Token为例
mcSession.send(dataToken, toPeers: mcSession.connectedPeers, with: .reliable)
2.多设备支持
多设备支持技术采用Apple原生方法 MCBrowserViewController类管理系统提供的用户，用于为多个对等会话选择要连接的对等方的接MCBrowserViewController管理附近对等方和为您邀请流程。
3.检测设备连接状态，距离，角度（方向等参数）
    //通过特征通知对数据到达做出反应。

    func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?) 
4.Demo 包含BleHelper 蓝牙多设备管理类主要做了扫描设备，获取设备信息 ，记录设备信息等操作，MPCManger 类使用wifi/bluetooth连接的框架
 BluetoothLECentral摘要：一个使用核心蓝牙管理与附件的连接和数据传输的类



