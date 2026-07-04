// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

// import struct
import {Status} from "../../common/SaleStruct.sol";

/**
 * @title IINOWritableInternal
 * @notice Defines enum, struct, event and errors for INO.
 */
interface IINOWritableInternal {
    error INO_IncorrectNativeAmount(uint256 sent, uint256 price);
    error INO_IncorrectERC20Amount(uint256 sent, uint256 price);
    error INO_MaxMintINOReached(uint256 maxMint, uint256 exceedBy);
    error INO_MaxMintInPhaseReached(uint256 maxMintInPhase, uint256 exceedBy);
    error INO_NativePaymentFailed(bytes data);
    error INO_OnlyUseMultipleOf(uint256 multiple);
    error INO_UseInstead(string);
}
