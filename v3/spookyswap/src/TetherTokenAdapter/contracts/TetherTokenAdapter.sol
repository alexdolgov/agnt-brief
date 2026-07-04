// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

import {ITetherToken} from "./interfaces/ITetherToken.sol";
import {IMintedBurnableERC20} from "./interfaces/IMintedBurnableERC20.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/// @notice Adapter in between a Tether stablecoin (USDT) and the Bridge contract.
/// Implements methods required in tokens by the Bridge, translates their calls
/// to calling methods of the target stablecoin.
/// Needs to be set as the token owner to be able to mint/burn.
/// The adapter owner can transfer the token ownership from the adapter.
/// @custom:security-contact security@fantom.foundation
contract TetherTokenAdapter is IMintedBurnableERC20, UUPSUpgradeable, Ownable2StepUpgradeable {

    /// @notice Target stablecoin token.
    ITetherToken public token;
    /// @notice The bridge contract (allowed to call methods of the adapter).
    address public bridge;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the contract after the deployment.
    function initialize(address _owner, ITetherToken _token, address _bridge) external initializer {
        require(address(_token) != address(0), "Token not set");
        require(_bridge != address(0), "Bridge not set");
        __Ownable_init(_owner);
        __UUPSUpgradeable_init();
        token = _token;
        bridge = _bridge;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /// @notice Transfers ownership of the token to a new account (`newOwner`).
    /// Can only be called by the current adapter owner.
    function transferTokenOwnership(address newOwner) public onlyOwner {
        token.transferOwnership(newOwner);
    }

    /// @notice Mint tokens to an address.
    /// @param account The address that will receive the minted tokens.
    /// @param amount The amount of tokens to mint.
    /// @return True if the operation was successful.
    function mint(address account, uint256 amount) external returns (bool) {
        require(msg.sender == bridge, "Sender is not bridge");
        token.mint(account, amount);
        return true;
    }

    /// @notice Burn tokens from `account` account.
    /// @param account The address whose tokens will be burned.
    /// @param value the amount of tokens to be burned.
    function burnFrom(address account, uint256 value) external {
        require(msg.sender == bridge, "Sender is not bridge");
        require(token.transferFrom(account, address(this), value), "TransferFrom failed");
        token.redeem(value);
    }

    /// @dev Unsupported - only for compliance with IMintedBurnableERC20 interface.
    function burn(uint256) external pure {
        revert("Burn unsupported");
    }

}
