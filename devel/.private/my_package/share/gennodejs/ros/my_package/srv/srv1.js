// Auto-generated. Do not edit!

// (in-package my_package.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

let RVL = require('../msg/RVL.js');

//-----------------------------------------------------------

class srv1Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg = null;
      this.ID = null;
    }
    else {
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srv1Request
    // Serialize message field [msg]
    bufferOffset = std_msgs.msg.Header.serialize(obj.msg, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.int32(obj.ID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srv1Request
    let len;
    let data = new srv1Request(null);
    // Deserialize message field [msg]
    data.msg = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.msg);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_package/srv1Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '740d822395a8811f7509ec6451fb7262';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header msg
    int32 ID
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srv1Request(null);
    if (msg.msg !== undefined) {
      resolved.msg = std_msgs.msg.Header.Resolve(msg.msg)
    }
    else {
      resolved.msg = new std_msgs.msg.Header()
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    return resolved;
    }
};

class srv1Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg2 = null;
      this.robotMessage = null;
    }
    else {
      if (initObj.hasOwnProperty('msg2')) {
        this.msg2 = initObj.msg2
      }
      else {
        this.msg2 = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('robotMessage')) {
        this.robotMessage = initObj.robotMessage
      }
      else {
        this.robotMessage = new RVL();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srv1Response
    // Serialize message field [msg2]
    bufferOffset = std_msgs.msg.Header.serialize(obj.msg2, buffer, bufferOffset);
    // Serialize message field [robotMessage]
    bufferOffset = RVL.serialize(obj.robotMessage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srv1Response
    let len;
    let data = new srv1Response(null);
    // Deserialize message field [msg2]
    data.msg2 = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robotMessage]
    data.robotMessage = RVL.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.msg2);
    length += RVL.getMessageSize(object.robotMessage);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_package/srv1Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e77b6211ec30c5435a2c270342b1d6e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header msg2
    my_package/RVL robotMessage
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: my_package/RVL
    int32 ID
    string Name
    int32 Level
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srv1Response(null);
    if (msg.msg2 !== undefined) {
      resolved.msg2 = std_msgs.msg.Header.Resolve(msg.msg2)
    }
    else {
      resolved.msg2 = new std_msgs.msg.Header()
    }

    if (msg.robotMessage !== undefined) {
      resolved.robotMessage = RVL.Resolve(msg.robotMessage)
    }
    else {
      resolved.robotMessage = new RVL()
    }

    return resolved;
    }
};

module.exports = {
  Request: srv1Request,
  Response: srv1Response,
  md5sum() { return '0a43d4272d4a6822c4aaf349b302052f'; },
  datatype() { return 'my_package/srv1'; }
};
