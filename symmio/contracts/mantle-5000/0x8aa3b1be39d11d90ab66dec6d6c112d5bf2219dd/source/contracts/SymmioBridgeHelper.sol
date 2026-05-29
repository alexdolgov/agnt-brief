// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "./interfaces/ICCTPTokenMessenger.sol";
import "./interfaces/IStargateRouter.sol";
import "./interfaces/ISymmioBridgeHelper.sol";

contract SymmioBridgeHelper is AccessControlEnumerable, ISymmioBridgeHelper {
	bytes32 public constant BALANCER_ROLE = keccak256("BALANCER_ROLE");

	CCTPConfig public cctpConfig;
	StargateConfig public stargateConfig;

	constructor() {}

	function configCCTPBridge(CCTPConfig memory _config) external override onlyRole(DEFAULT_ADMIN_ROLE) {
		require(_config.mintRecipient != address(0), "SymmioBridgeHelper: Zero destination address");
		cctpConfig = _config;
		emit CCTPBridgeConfigured(_config);
	}

	function configStargateBridge(StargateConfig memory _config) external override onlyRole(DEFAULT_ADMIN_ROLE) {
		require(_config.mintRecipient != address(0), "SymmioBridgeHelper: Zero destination address");
		stargateConfig = _config;
		emit StargateBridgeConfigured(_config);
	}

	function addressToBytes32(address addr) public pure override returns (bytes32) {
		return bytes32(uint256(uint160(addr)));
	}

	function bridgeWithCCTP(uint256 amount) external override onlyRole(BALANCER_ROLE) returns (uint64 nonce) {
		require(cctpConfig.mintRecipient != address(0), "SymmioBridgeHelper: Zero destination address");
		IERC20(cctpConfig.burnToken).transferFrom(msg.sender, address(this), amount);
		IERC20(cctpConfig.burnToken).approve(cctpConfig.tokenMessenger, amount);
		nonce = ICCTPTokenMessenger(cctpConfig.tokenMessenger).depositForBurn(
			amount,
			cctpConfig.destinationDomain,
			addressToBytes32(cctpConfig.mintRecipient),
			cctpConfig.burnToken
		);
		emit CCTPBridgeInitiated(amount, nonce);
	}

	function bridgeWithStargate(uint256 amount, uint256 minAmountOut) external override onlyRole(BALANCER_ROLE) {
		require(stargateConfig.mintRecipient != address(0), "SymmioBridgeHelper: Zero destination address");
		IERC20(stargateConfig.burnToken).transferFrom(msg.sender, address(this), amount);

		IERC20(stargateConfig.burnToken).approve(stargateConfig.router, amount);
		uint256 fee = estimateStargateFee();

		IStargateRouter.lzTxObj memory txParams = IStargateRouter.lzTxObj({ dstGasForCall: 0, dstNativeAmount: 0, dstNativeAddr: "0x" });

		IStargateRouter(stargateConfig.router).swap{ value: fee }(
			stargateConfig.destinationChainId,
			stargateConfig.sourcePoolId,
			stargateConfig.destinationPoolId,
			payable(stargateConfig.mintRecipient),
			amount,
			minAmountOut,
			txParams,
			abi.encode(stargateConfig.mintRecipient),
			"0x"
		);
		emit StargateBridgeInitiated(amount, minAmountOut, fee);
	}

	function estimateStargateFee() public view override returns (uint256) {
		IStargateRouter.lzTxObj memory txParams = IStargateRouter.lzTxObj({ dstGasForCall: 0, dstNativeAmount: 0, dstNativeAddr: "0x" });

		(uint256 fee, ) = IStargateRouter(stargateConfig.router).quoteLayerZeroFee(
			stargateConfig.destinationChainId, // _dstChainId
			1, // _functionType
			abi.encode(stargateConfig.mintRecipient), // _toAddress
			"0x", // _transferAndCallPayload
			txParams // _lzTxParams
		);

		return fee;
	}
}
