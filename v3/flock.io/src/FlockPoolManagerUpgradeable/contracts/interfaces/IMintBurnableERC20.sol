// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

/**
 * @title Mintable + Burnable
 * @author Ryon
 */
interface IMintBurnableERC20 is IERC20Upgradeable {
    /**
     * @notice Mint the token to the account
     * @param _account The account to mint
     * @param _amount The amount to mint
     */
    function mint(address _account, uint256 _amount) external;
}
