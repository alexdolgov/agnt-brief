// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

interface WAethir {
    /**
     * @dev Mints `value` tokens to the `account`.
     * @param account The address to mint tokens to.
     * @param value The amount of tokens to mint.
     */
    function mint(address account, uint256 value) external;

    /**
     * @dev Burns `value` tokens from the `account`.
     * @param account The address to burn tokens from.
     * @param value The amount of tokens to burn.
     */
    function burn(address account, uint256 value) external;
}

/**
 * @title AethirWrapper
 * @dev A contract to wrap and unwrap Aethir tokens.
 */
contract AethirWrapper is OwnableUpgradeable {
    IERC20 public aethir;
    WAethir public stAethir;
    WAethir public veAethir;

    event Wrap(address indexed user, uint256 amount);
    event Unwrap(address indexed user, uint256 amount);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initializes the contract with the given Aethir, stAethir, and veAethir token addresses.
     * @param _aethir The address of the Aethir token.
     * @param _stAethir The address of the stAethir token.
     * @param _veAethir The address of the veAethir token.
     */
    function initialize(
        IERC20 _aethir,
        WAethir _stAethir,
        WAethir _veAethir
    ) public initializer {
        __Ownable_init(msg.sender);
        aethir = _aethir;
        stAethir = _stAethir;
        veAethir = _veAethir;
    }

    /**
     * @notice Wraps the specified amount of Aethir tokens.
     * @dev Transfers the tokens from the sender to the contract and mints stAethir and veAethir tokens to the sender.
     * @param amount The amount of Aethir tokens to wrap.
     */
    function wrap(uint256 amount) external {
        wrapFor(msg.sender, amount);
    }

    /**
     * @notice Wraps the specified amount of Aethir tokens for a specified account.
     * @dev Transfers the tokens from the sender and mints stAethir and veAethir tokens to the specified account.
     * @param account The address to mint the wrapped tokens to.
     * @param amount The amount of Aethir tokens to wrap.
     */
    function wrapFor(address account, uint256 amount) public {
        aethir.transferFrom(msg.sender, address(this), amount);

        stAethir.mint(account, amount);
        veAethir.mint(account, amount);

        emit Wrap(account, amount);
    }

    /**
     * @notice Unwraps the specified amount of Aethir tokens.
     * @dev Burns the stAethir and veAethir tokens from the sender and transfers the equivalent amount of Aethir tokens to the sender.
     * @param amount The amount of Aethir tokens to unwrap.
     */
    function unwrap(uint256 amount) external {
        stAethir.burn(msg.sender, amount);
        veAethir.burn(msg.sender, amount);

        aethir.transfer(msg.sender, amount);
        emit Unwrap(msg.sender, amount);
    }

    // Reserved storage space to allow for layout changes in the future.
    uint256[50] private __gap;
}
