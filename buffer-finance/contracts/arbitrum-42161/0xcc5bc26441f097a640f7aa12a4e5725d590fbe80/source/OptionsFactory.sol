// SPDX-License-Identifier: MIT
// Author: Heisenberg
pragma solidity ^0.8.4;

import "ReentrancyGuard.sol";
import "ERC721.sol";
import "AccessControl.sol";
import "SafeERC20.sol";
import "Interfaces.sol";
import "OptionsConfig.sol";
import "BufferBinaryOptions.sol";

// import "BufferRouter.sol";

/**
 * @author Heisenberg
 * @title Controller
 * @notice A contract to manage the config values for all the option contracts and to launch new option contracts on a defined pool
 */

contract OptionsFactory {
    constructor() {}

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    function deploy(
        ILiquidityPool _pool,
        IOptionsConfig optionsConfig,
        IReferralStorage referralStorage,
        IBufferBinaryOptions.AssetCategory assetCategory,
        string memory assetPair
    ) public returns (IBufferBinaryOptions) {
        IBufferBinaryOptions options = new BufferBinaryOptions(
            _pool.tokenX(),
            _pool,
            optionsConfig,
            referralStorage,
            assetCategory,
            assetPair
        );
        IAccessControl(address(options)).grantRole(
            DEFAULT_ADMIN_ROLE,
            msg.sender
        );

        return options;
    }
}

// Interface for the OptionsFactory contract

interface IOptionsFactory {
    function deploy(
        ILiquidityPool _pool,
        IOptionsConfig optionsConfig,
        IReferralStorage referralStorage,
        IBufferBinaryOptions.AssetCategory assetCategory,
        string memory assetPair
    ) external returns (IBufferBinaryOptions);
}
