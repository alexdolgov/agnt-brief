// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { ContractType, ProxyInfo } from "../common/Types.sol";

interface IFactory {
    function getChainId(uint32 _eid) external returns (uint256);
    function getEid(uint256 _chainId) external returns (uint32);

    function getProxyInfo(
        ContractType _contractType,
        bytes32 _proxyAddress,
        uint32 _eid
    ) external view returns (bool status, ProxyInfo memory proxyInfo);

    function getDeployedOrRevert(
        ContractType _contractType,
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        uint32 _eid
    ) external view returns (bytes32 proxyAddress, uint32 eid);

    function isAuthorizedBridgeAddress(
        address _caller,
        uint256 _chainId
    ) external view returns (bool);

    function getWithdrawalMinFee(
        uint32 _srcEid,
        uint32 _dstEid
    ) external view returns (uint256 nativeFee);

    function paused() external view returns (bool);
}
