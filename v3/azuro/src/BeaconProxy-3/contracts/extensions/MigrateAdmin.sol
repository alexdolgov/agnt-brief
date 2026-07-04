// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.9;

import "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import "../utils/OwnableUpgradeable.sol";

interface ILP {
    function token() external view returns (address);

    function migrateLiquidityFrom(
        uint48 depositId
    ) external returns (address depositOwner, uint128 withdrawnAmount);
}

interface IModernLp {
    function addDepositFor(
        address account,
        uint128 amount
    ) external returns (uint48 depositId);
}

/// @title Azuro Liquidity Pool managing
contract MigrateAdmin is OwnableUpgradeable {
    event DepositMigrated(
        address indexed modernLp,
        address indexed account,
        uint48 oldDepositId,
        uint48 newDepositId,
        uint128 withdrawnAmount
    );

    ILP public legacyLp;
    IModernLp public modernLp;
    address public token;

    function initialize(
        address legacyLp_,
        address modernLp_,
        address owner_
    ) external virtual initializer {
        __Ownable_init();
        transferOwnership(owner_);
        legacyLp = ILP(legacyLp_);
        modernLp = IModernLp(modernLp_);
        token = legacyLp.token();
        TransferHelper.safeApprove(token, modernLp_, type(uint256).max);
    }

    /**
     * @notice Migrate liquidity deposit into modern liquidity protocol.
     * @param  depositIds The ID of the liquidity deposit.
     */
    function migrateLiquidity(uint48[] calldata depositIds) external onlyOwner {
        uint48 depositId;
        uint256 length = depositIds.length;

        for (uint256 i; i < length; ++i) {
            depositId = depositIds[i];
            (address depositOwner, uint128 amount) = legacyLp
                .migrateLiquidityFrom(depositId);
            emit DepositMigrated(
                address(modernLp),
                depositOwner,
                depositId,
                IModernLp(modernLp).addDepositFor(depositOwner, amount),
                amount
            );
        }
    }
}
