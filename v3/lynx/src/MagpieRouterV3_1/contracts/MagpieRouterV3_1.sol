// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Ownable2Step} from "openzeppelin-solidity/contracts/access/Ownable2Step.sol";
import {Pausable} from "openzeppelin-solidity/contracts/security/Pausable.sol";
import {Address} from "openzeppelin-solidity/contracts/utils/Address.sol";
import {IMagpieRouterV3_1} from "./interfaces/IMagpieRouterV3_1.sol";
import {LibAsset} from "./libraries/LibAsset.sol";
import {LibRouter, SwapData} from "./libraries/LibRouter.sol";

error InvalidCall();
error InvalidCaller();
error InvalidAmountIn();
error InvalidNativeAmount();

contract MagpieRouterV3_1 is IMagpieRouterV3_1, Ownable2Step, Pausable {
    using LibAsset for address;

    mapping(address => bool) public internalCaller;
    address public coreAddress;
    address public swapFeeAddress;

    /// @dev Restricts swap functions with signatures to only be called by whitelisted internal caller.
    modifier onlyInternalCaller() {
        if (!internalCaller[msg.sender]) {
            revert InvalidCaller();
        }
        _;
    }

    /// @dev See {IMagpieRouterV3-updateRouterAddress}
    function updateCoreAddress(address value) external onlyOwner {
        coreAddress = value;
    }

    /// @dev See {IMagpieRouterV3-updateSwapFeeAddress}
    function updateSwapFeeAddress(address value) external onlyOwner {
        swapFeeAddress = value;
    }

    /// @dev See {IMagpieRouterV3-updateInternalCaller}
    function updateInternalCaller(address caller, bool value) external onlyOwner {
        internalCaller[caller] = value;

        emit UpdateInternalCaller(msg.sender, caller, value);
    }

    /// @dev See {IMagpieRouterV3-pause}
    function pause() public onlyOwner whenNotPaused {
        _pause();
    }

    /// @dev See {IMagpieRouterV3-unpause}
    function unpause() public onlyOwner whenPaused {
        _unpause();
    }

    /// @dev See {IMagpieRouterV3-multicall}
    function multicall(bytes[] calldata data) external onlyOwner returns (bytes[] memory results) {
        results = new bytes[](data.length);
        for (uint256 i = 0; i < data.length; i++) {
            results[i] = Address.functionDelegateCall(address(this), data[i]);
        }
        return results;
    }

    /// @dev Verifies the signature for a swap operation.
    /// @param swapData The data structure containing information about the swap.
    /// @param useCaller Boolean indicating whether to use the caller's address.
    /// @return fromAddress The address to be used for the swap operation.
    function verifySignature(SwapData memory swapData, bool useCaller) private view returns (address fromAddress) {
        bool hasAffiliate = swapData.hasAffiliate;
        uint256 messagePtr;
        uint256 messageLength = hasAffiliate ? 384 : 320;
        assembly {
            messagePtr := mload(0x40)
            mstore(0x40, add(messagePtr, messageLength))
            switch hasAffiliate
            case 1 {
                // keccak256("Swap(address router,address sender,address recipient,address fromAsset,address toAsset,uint256 deadline,uint256 amountOutMin,uint256 swapFee,uint256 amountIn,address affiliate,uint256 affiliateFee)")
                mstore(messagePtr, 0x64d67eff2ff010acba1b1df82fb327ba0dc6d2965ba6b0b472bc14c494c8b4f6)
            }
            default {
                // keccak256("Swap(address router,address sender,address recipient,address fromAsset,address toAsset,uint256 deadline,uint256 amountOutMin,uint256 swapFee,uint256 amountIn)")
                mstore(messagePtr, 0x783528850c43ab6adcc3a843186a6558aa806707dd0abb3d2909a2a70b7f22a3)
            }
        }
        fromAddress = LibRouter.verifySignature(
            // keccak256(bytes("Magpie Router")),
            0x86af987965544521ef5b52deabbeb812d3353977e11a2dbe7e0f4905d1e60721,
            // keccak256(bytes("3")),
            0x2a80e1ef1d7842f27f2e6be0972bb708b9a135c38860dbe73c27c3486c34f4de,
            swapData,
            messagePtr,
            messageLength,
            useCaller,
            2
        );
    }

    /// @dev Swaps tokens based on the provided swap data.
    /// @param swapData The data structure containing information about the swap operation.
    /// @param fromAddress The address initiating the swap. This address is responsible for the input assets.
    /// @return amountOut The amount of tokens or assets received after the swap.
    /// @return gasUsed The amount of gas consumed by the recorded operation.
    function swap(
        SwapData memory swapData,
        address fromAddress,
        uint256 fullAmountIn
    ) private returns (uint256 amountOut, uint256 gasUsed) {
        if (swapData.fromAssetAddress.isNative()) {
            if (msg.value < (swapData.amountIn + swapData.swapFee + swapData.affiliateFee)) {
                revert InvalidAmountIn();
            }
        }

        uint256 nativeAmount = 0;
        if (swapData.fromAssetAddress.isNative()) {
            nativeAmount = swapData.amountIn;
        } else {
            swapData.fromAssetAddress.transferFrom(fromAddress, address(this), swapData.amountIn);
            swapData.fromAssetAddress.approve(coreAddress, swapData.amountIn);
        }
        address currentCoreAddress = coreAddress;
        assembly {
            let success := 0
            let inputPtr := mload(0x40)
            let inputLength := add(calldataload(36), 68)
            let payloadLength := sub(inputLength, 68)
            mstore(0x40, add(inputPtr, inputLength))
            mstore(inputPtr, 0x158f689400000000000000000000000000000000000000000000000000000000) // swapWithoutSignature
            mstore(add(inputPtr, 4), 32)
            mstore(add(inputPtr, 36), payloadLength)
            let outputPtr := mload(0x40)
            mstore(0x40, add(outputPtr, 64))
            calldatacopy(add(inputPtr, 68), 68, payloadLength)
            success := call(gas(), currentCoreAddress, nativeAmount, inputPtr, inputLength, outputPtr, 64)

            if eq(success, 1) {
                amountOut := mload(outputPtr)
                gasUsed := mload(add(outputPtr, 32))
            }

            if eq(success, 0) {
                returndatacopy(0, 0, returndatasize())
                revert(0, returndatasize())
            }
        }

        emit Swap(
            fromAddress,
            swapData.toAddress,
            swapData.fromAssetAddress,
            swapData.toAssetAddress,
            fullAmountIn,
            amountOut
        );
    }

    /// @dev See {IMagpieRouterV3-estimateSwapGas}
    function estimateSwapGas(
        bytes calldata
    ) external payable whenNotPaused returns (uint256 amountOut, uint256 gasUsed) {
        SwapData memory swapData = LibRouter.getData();
        address fromAddress = verifySignature(swapData, true);
        if (swapData.hasPermit) {
            LibRouter.permit(swapData, fromAddress);
        }
        LibRouter.transferFees(swapData, fromAddress, swapData.swapFee == 0 ? address(0) : swapFeeAddress);
        (amountOut, gasUsed) = swap(
            swapData,
            fromAddress,
            swapData.amountIn + swapData.swapFee + swapData.affiliateFee
        );
    }

    /// @dev See {IMagpieRouterV3-swapWithMagpieSignature}
    function swapWithMagpieSignature(bytes calldata) external payable whenNotPaused returns (uint256 amountOut) {
        SwapData memory swapData = LibRouter.getData();
        address fromAddress = verifySignature(swapData, true);
        if (swapData.hasPermit) {
            LibRouter.permit(swapData, fromAddress);
        }
        LibRouter.transferFees(swapData, fromAddress, swapData.swapFee == 0 ? address(0) : swapFeeAddress);
        (amountOut, ) = swap(swapData, fromAddress, swapData.amountIn + swapData.swapFee + swapData.affiliateFee);
    }

    /// @dev See {IMagpieRouterV3-swapWithUserSignature}
    function swapWithUserSignature(bytes calldata) external payable onlyInternalCaller returns (uint256 amountOut) {
        SwapData memory swapData = LibRouter.getData();
        if (msg.value > 0) {
            revert InvalidNativeAmount();
        }
        address fromAddress = verifySignature(swapData, false);
        if (swapData.hasPermit) {
            LibRouter.permit(swapData, fromAddress);
        }
        LibRouter.transferFees(swapData, fromAddress, swapData.swapFee == 0 ? address(0) : swapFeeAddress);
        (amountOut, ) = swap(swapData, fromAddress, swapData.amountIn + swapData.swapFee + swapData.affiliateFee);
    }

    /// @dev Used to receive ethers
    receive() external payable {}
}
