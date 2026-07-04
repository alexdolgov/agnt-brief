// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.17;

import { VaultV1Whitelisted } from "contracts/VaultV1Whitelisted.sol";

interface IDeployerStrategy {
    function deploy(string calldata symbol, address[] calldata allowedSpenders, address[] calldata allowedTokens, uint256 feePerformance, uint256 feeFixed) external returns (address);
}

contract DeployerV1 {
    event Deployed(address vault, address strategy);

    IDeployerStrategy public deployerStrategy;

    constructor(address _deployerStrategy) {
        deployerStrategy = IDeployerStrategy(_deployerStrategy);
    }

    function deploy(string calldata name, string calldata symbol, uint max, address token,address trader, address owner, address depositor, uint startDeposit, uint startTrade, uint end, address[] calldata allowedSpenders, address[] calldata allowedTokens, uint256 feePerformance, uint256 feeFixed, address whitelistAsset, uint256 whitelistBalance) public returns (address, address) {
        address s = deployerStrategy.deploy(symbol, allowedSpenders, allowedTokens, feePerformance, feeFixed);
        VaultV1Whitelisted v = new VaultV1Whitelisted(token, name, symbol, s, max, whitelistAsset, whitelistBalance);
        s.call(abi.encodeWithSignature("addLyraMarket(address)", 0x919E5e0C096002cb8a21397D724C4e3EbE77bC15));
        s.call(abi.encodeWithSignature("setFeeReceiver(address)", trader));
        s.call(abi.encodeWithSignature("setVault(address)", address(v)));
        s.call(abi.encodeWithSignature("grantRole(bytes32,address)", bytes32(0x00), owner));
        s.call(abi.encodeWithSignature("grantRole(bytes32,address)", bytes32(0x00), trader));
        s.call(abi.encodeWithSignature("grantRole(bytes32,address)", 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, trader));
        s.call(abi.encodeWithSignature("grantRole(bytes32,address)", 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, owner));
        s.call(abi.encodeWithSignature("renounceRole(bytes32)", bytes32(0)));
        address(v).call(abi.encodeWithSignature("setWhitelistStatus(address,bool)", depositor, true));
        address(v).call(abi.encodeWithSignature("startEpoch(uint80,uint80,uint80)", startDeposit, startTrade, end));
        address(v).call(abi.encodeWithSignature("transferOwnership(address)", owner));
        emit Deployed(address(v), s);
        return (address(v), s);
    }
}
