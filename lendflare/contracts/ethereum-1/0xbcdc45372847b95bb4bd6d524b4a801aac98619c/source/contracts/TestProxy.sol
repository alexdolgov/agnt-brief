// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import "@openzeppelin/contracts/proxy/ProxyAdmin.sol";

import "@openzeppelin/contracts/proxy/Initializable.sol";
import "@openzeppelin/contracts/proxy/TransparentUpgradeableProxy.sol";

contract MProxyAdmin is ProxyAdmin {}
//0x3F1fEaEE6b4D8f28eec051c127B2798CDD2437A5
//0xdb47A69DaD51953f84AB4E604FFE0266816dd5E8
//0x8129fc1c
contract TestProxy is Initializable {
    string public constant tag = "aaaa";
    string public version1 = "1.0.0";
    address public test = address(0);

    function initialize() public initializer {
        version1 = "1.0.0";
    }

    mapping(string => uint256) private uint256Params;

    event Uint256ParamSetted(string indexed _key, uint256 _value);

    function SetUint256Param(string memory _key, uint256 _value) external {
        uint256Params[_key] = _value;
        emit Uint256ParamSetted(_key, _value);
    }

    function GetUint256Param(string memory _key) public view returns (uint256) {
        return uint256Params[_key];
    }
}
