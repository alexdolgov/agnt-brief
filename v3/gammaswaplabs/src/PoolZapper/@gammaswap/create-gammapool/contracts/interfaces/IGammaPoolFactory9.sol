// SPDX-License-Identifier: GPL-v3
pragma solidity 0.8.21;

interface IGammaPoolFactory9 {
    function getProtocol(uint16 _protocolId) external view returns (address);
    function isProtocolRestricted(uint16 _protocolId) external view returns(bool);
    function createPool(uint16 _protocolId, address _cfmm, address[] calldata _tokens, bytes calldata _data) external returns(address);
}