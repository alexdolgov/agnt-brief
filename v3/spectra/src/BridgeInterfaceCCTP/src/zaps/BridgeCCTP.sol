//SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.22;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {BaseBridgeInterface} from "./BaseBridgeInterface.sol";
import {ITokenMessengerV2} from "../interfaces/ITokenMessengerV2.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

/**
 * @notice Zap that bridges USDC via CCTP by calling TokenMessengerV2.depositForBurn.
 */
contract BridgeInterfaceCCTP is BaseBridgeInterface {
    using SafeERC20 for IERC20;

    //Errors
    error InvalidDomain();

    //mapping from chain id to CCTP domain
    mapping(uint32 => uint32) public chainIdToDomain;

    constructor() {
        _disableInitializers();
    }

    function initialize(address initialAuthority, address _registry, address _bridgeInfrastructure) external initializer {
        __BaseBridgeInterface_init(initialAuthority, _registry, _bridgeInfrastructure);

        // Set default chainId to domain mappings
        chainIdToDomain[1] = 0; // Ethereum Mainnet
        chainIdToDomain[43114] = 1; // Avalanche C-Chain
        chainIdToDomain[10] = 2; // Optimism
        chainIdToDomain[42161] = 3; // Arbitrum One
        chainIdToDomain[8453] = 6; // Base (Mainnet)
    }

    function bridgeAsset(
        address tokenIn,
        uint256 amount,
        uint32 dstChainId,
        address dstSafe,
        address tokenOut,
        bytes calldata params
    ) external payable override {
        if (amount == 0) revert ZeroAmount();
        (
            uint32 dstDomain,
            uint256 maxFee,
            uint32 minFinalityThreshold,
            bytes32 destinationCaller
        ) = abi.decode(params, (uint32, uint256, uint32, bytes32));

        _bridgeCCTP(
            tokenIn,
            amount,
            dstChainId,
            dstSafe,
            dstDomain,
            maxFee,
            minFinalityThreshold,
            destinationCaller
        );
    }

    /// Convenience function to avoid abi-encoding params
    function bridgeAssetCctp(
        address token,
        uint256 amount,
        uint32 dstChainId,
        address dstSafe,
        address tokenOut,
        uint32 dstDomain,
        uint256 maxFee,
        uint32 minFinalityThreshold,
        bytes32 destinationCaller
    ) external {
        if (amount == 0) revert ZeroAmount();
        _bridgeCCTP(
            token,
            amount,
            dstChainId,
            dstSafe,
            dstDomain,
            maxFee,
            minFinalityThreshold,
            destinationCaller
        );
    }

    function setChainDomain(uint32 chainId, uint32 domain) public restricted {
        chainIdToDomain[chainId] = domain;
    }

    // Internal shared implementation for CCTP flow
    function _bridgeCCTP(
        address token,
        uint256 amount,
        uint32 dstChainId,
        address dstSafe,
        uint32 dstDomain,
        uint256 maxFee,
        uint32 minFinalityThreshold,
        bytes32 destinationCaller
    ) internal {
        if (token == address(0) || dstSafe == address(0) || bridgeInfrastructure == address(0))
            revert ZeroAddress();
        if (chainIdToDomain[dstChainId] != dstDomain) revert InvalidDomain();

        // pull funds from the calling SAFE into this zap
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        IERC20(token).forceApprove(bridgeInfrastructure, amount);

        // The checks for the route happen using Zodiac and the registry before interacting with the zap
        ITokenMessengerV2(bridgeInfrastructure).depositForBurn(
            amount,
            dstDomain,
            _toBytes32(dstSafe),
            token,
            destinationCaller, // bytes32(0) means anyone can finalize
            maxFee,
            minFinalityThreshold // 1000 fast / 2000 final
        );

        emit BridgeInitiated(msg.sender, token, amount, dstChainId, dstSafe, "CCTP", token);
    }

    function _toBytes32(address a) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(a)));
    }
}
