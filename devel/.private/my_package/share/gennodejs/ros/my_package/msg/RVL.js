// Auto-generated. Do not edit!

// (in-package my_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RVL {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ID = null;
      this.Name = null;
      this.Level = null;
    }
    else {
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('Name')) {
        this.Name = initObj.Name
      }
      else {
        this.Name = '';
      }
      if (initObj.hasOwnProperty('Level')) {
        this.Level = initObj.Level
      }
      else {
        this.Level = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RVL
    // Serialize message field [ID]
    bufferOffset = _serializer.int32(obj.ID, buffer, bufferOffset);
    // Serialize message field [Name]
    bufferOffset = _serializer.string(obj.Name, buffer, bufferOffset);
    // Serialize message field [Level]
    bufferOffset = _serializer.int32(obj.Level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RVL
    let len;
    let data = new RVL(null);
    // Deserialize message field [ID]
    data.ID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Name]
    data.Name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Level]
    data.Level = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.Name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_package/RVL';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b4ec2aa60da3db4c69006afb31b0c05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RVL(null);
    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.Name !== undefined) {
      resolved.Name = msg.Name;
    }
    else {
      resolved.Name = ''
    }

    if (msg.Level !== undefined) {
      resolved.Level = msg.Level;
    }
    else {
      resolved.Level = 0
    }

    return resolved;
    }
};

module.exports = RVL;
