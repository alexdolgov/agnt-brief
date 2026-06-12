// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {ILyve} from "./interfaces/ILyve.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/// @title Lyve
/// @author lyve.finance
/// @notice The native token in the Lyve V2 ecosystem
/// @dev Emitted by the Minter and in conversions from v1 LYVE
contract Lyve is ILyve, ERC20Permit {
    address public minter;
    address private owner;
    address public lyveBridge;

    error OnlyBridge(address bridgeAddress);
    error OnlyOwner(address owner);


    constructor() ERC20("LYVE", "LYVE") ERC20Permit("LYVE") {
        minter = msg.sender;
        owner = msg.sender;
        lyveBridge = msg.sender;
    }
    modifier onlyBridge() {
    if (msg.sender != lyveBridge) revert OnlyBridge(lyveBridge);
    _;
  }
   modifier onlyOwner() {
    if (msg.sender != owner) revert OnlyOwner(owner);
    _;
  }


    /// @dev No checks as its meant to be once off to set minting rights to BaseV1 Minter
    function setMinter(address _minter) external {
        if (msg.sender != minter) revert NotMinter();
        minter = _minter;
    }

    function setBridge(address _lyveBridge) external onlyOwner {
        lyveBridge = _lyveBridge;
    }

    function mint(address account, uint256 amount) external returns (bool) {
        if (msg.sender != minter ) revert NotMinter();
        _mint(account, amount);
        return true;
    }
    /**
   * @dev Called by the bridge to burn tokens during a bridge transaction.
   * @dev User should first have allowed the bridge to spend tokens on their behalf.
   * @param _account The account from which tokens will be burned.
   * @param _amount The amount of tokens to burn.
   */
  function burn(address _account, uint256 _amount) external onlyBridge {
    _spendAllowance(_account, msg.sender, _amount);
    _burn(_account, _amount);
  }
}
