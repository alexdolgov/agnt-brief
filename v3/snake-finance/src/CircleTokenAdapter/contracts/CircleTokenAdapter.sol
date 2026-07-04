// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

import "./interfaces/ICircleToken.sol";
import "./interfaces/IMintedBurnableERC20.sol";

/// Adapter in between a Circle stablecoin (USDC/EURC) and the Bridge contract.
/// Implements methods required in tokens by the Bridge, translates their calls
/// to calling methods of the target stablecoin.
/// The contract should be deployable as implementation of deprecated FiatToken,
/// therefore it must be careful in using any storage.
contract CircleTokenAdapter is IMintedBurnableERC20 {

    // All variables should be immutable to be compiled into the contract bytecode.
    ICircleFiatToken public immutable token;
    address public immutable bridge;

    constructor(ICircleFiatToken _token, address _bridge) {
        require(address(_token) != address(0), "Token not set");
        require(_bridge != address(0), "Bridge not set");
        token = _token;
        bridge = _bridge;
    }

    /// @notice Mint fiat tokens to an address.
    /// @param account The address that will receive the minted tokens.
    /// @param amount The amount of tokens to mint.
    /// @return True if the operation was successful.
    function mint(address account, uint256 amount) external returns (bool) {
        require(msg.sender == bridge, "Sender is not bridge");
        return token.mint(account, amount);
    }

    /// @notice Burn tokens from `account` account.
    /// @param account The address whose tokens will be burned.
    /// @param value the amount of tokens to be burned.
    function burnFrom(address account, uint256 value) external {
        require(msg.sender == bridge, "Sender is not bridge");
        require(token.transferFrom(account, address(this), value), "TransferFrom failed");
        token.burn(value);
    }

    /// Unsupported - only for compliance with IMintedBurnableERC20 interface.
    function burn(uint256) external pure {
        revert("Burn unsupported");
    }

}
