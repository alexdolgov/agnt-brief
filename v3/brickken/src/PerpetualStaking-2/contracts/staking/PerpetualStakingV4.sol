// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import "./PerpetualStaking.sol";

/// @title PerpetualStakingV4
/// @notice Adds a one-shot BKN token migration to PerpetualStaking
/// @custom:security-contact tech@brickken.com
contract PerpetualStakingV4 is PerpetualStaking {
    event BKNTokenMigrated(address indexed oldToken, address indexed newToken);

    error InvalidNewBKN();

    /// @notice One-shot migration of the staking token reference.
    /// @param _newBKN address of the new BKN ERC20
    function reinitializeV4(address _newBKN) external reinitializer(4) {
        if (_newBKN == address(0) || _newBKN.code.length == 0) revert InvalidNewBKN();

        address oldToken = address(BKNToken);
        BKNToken = IERC20Upgradeable(_newBKN);

        emit BKNTokenMigrated(oldToken, _newBKN);
    }
}
