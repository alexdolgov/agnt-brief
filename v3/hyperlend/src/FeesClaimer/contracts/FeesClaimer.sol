// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {IPoolAddressesProvider} from "@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import {DataTypes} from "@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IPool} from "@aave/core-v3/contracts/interfaces/IPool.sol";
import {ITimelock} from "./interfaces/ITimelock.sol";
import {IPairRegistry} from "./interfaces/IPairRegistry.sol";
import {IIsolatedPool} from "./interfaces/IIsolatedPool.sol";

/// @title FeesClaimer
/// @notice Contract which allows claiming of all fees in one transaction
contract FeesClaimer is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;


    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         Constants                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    IPool public corePool = IPool(0x00A89d7a5A02160f20150EbEA7a2b5E4879A1A8b);
    ITimelock public timelock = ITimelock(0xCCcCCcCCC4B6CD09594E7c5bF108695F79313115);
    IPairRegistry public pairRegistry = IPairRegistry(0xf55AF86c9EC3a7d5fa6367c00a120E6B262f718d);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      Errors & Events                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error NativeTransferFailed();
    event RescueTokens(address token, address to);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          Functions                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    constructor() Ownable() {}

    function claimFees() external onlyOwner() {
        _claimCoreFees();
        _claimIsolatedFees();
    }

    /// @notice call mintToTreasury with all reserves
    function _claimCoreFees() internal {
        address[] memory reserves = corePool.getReservesList();
        corePool.mintToTreasury(reserves);
    }

    /// @notice since timelock C is owner of all isolated pools,
    /// we need to schedule and execute timelock tx which will call withdrawFees() on all pairs
    /// @dev timelock delay must be 0, otherwise this will fail
    function _claimIsolatedFees() internal {
        address[] memory deployedPairs = pairRegistry.getAllPairAddresses();
        uint256 len = deployedPairs.length;

        uint256[] memory values = new uint256[](len);
        bytes[] memory payloads = new bytes[](len);

        //withdrawFees to 0xcbf400610dbf462fe316d8a7db6ba78d57e43d7b
        bytes memory callPayload = hex"daf33f2a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cbf400610dbf462fe316d8a7db6ba78d57e43d7b"; 

        for (uint256 i = 0; i < len; i++) {
            IIsolatedPool(deployedPairs[i]).addInterest(false);
            values[i] = 0;
            payloads[i] = callPayload; 
        }
        bytes32 salt = keccak256(abi.encodePacked(block.timestamp,msg.sender));

        timelock.scheduleBatch(deployedPairs, values, payloads, 0x0000000000000000000000000000000000000000000000000000000000000000, salt, 0);                
        timelock.executeBatch(deployedPairs, values, payloads, 0x0000000000000000000000000000000000000000000000000000000000000000, salt);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           Helpers                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    
    /// @notice used to rescue any funds stuck on HyperEvm
    function rescueTokens(address token, address to) external onlyOwner() {
        if (token == address(0)){
            (bool ok, ) = payable(to).call{value: address(this).balance}("");
            if (!ok) revert NativeTransferFailed();
        } else {
            IERC20(token).safeTransfer(to, IERC20(token).balanceOf(address(this)));
        }

        emit RescueTokens(token, to);
    }
}
