// Auto-generated. Do not edit!

// (in-package my_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class my_actionFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback_header = null;
      this.currentCharge = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback_header')) {
        this.feedback_header = initObj.feedback_header
      }
      else {
        this.feedback_header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('currentCharge')) {
        this.currentCharge = initObj.currentCharge
      }
      else {
        this.currentCharge = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type my_actionFeedback
    // Serialize message field [feedback_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.feedback_header, buffer, bufferOffset);
    // Serialize message field [currentCharge]
    bufferOffset = _serializer.int32(obj.currentCharge, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type my_actionFeedback
    let len;
    let data = new my_actionFeedback(null);
    // Deserialize message field [feedback_header]
    data.feedback_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [currentCharge]
    data.currentCharge = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.feedback_header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_package/my_actionFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '255e3dbd719fbd4e6732b6bf7e9de092';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    std_msgs/Header feedback_header
    int32 currentCharge
    
    
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
    const resolved = new my_actionFeedback(null);
    if (msg.feedback_header !== undefined) {
      resolved.feedback_header = std_msgs.msg.Header.Resolve(msg.feedback_header)
    }
    else {
      resolved.feedback_header = new std_msgs.msg.Header()
    }

    if (msg.currentCharge !== undefined) {
      resolved.currentCharge = msg.currentCharge;
    }
    else {
      resolved.currentCharge = 0
    }

    return resolved;
    }
};

module.exports = my_actionFeedback;
