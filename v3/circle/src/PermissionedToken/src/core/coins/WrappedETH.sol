// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

// imported contracts
import {DepositWithdrawToken} from "./DepositWithdrawToken.sol";
import {SafeTransferLib} from "solmate/utils/SafeTransferLib.sol";
import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";

// interfaces
import {IWETH} from "../../interfaces/IWETH.sol";

import "../../config/errors.sol";

contract WrappedETH is DepositWithdrawToken {
    /// @notice the address of WETH
    IWETH public immutable weth;

    /*///////////////////////////////////////////////////////////////
                Constructor for implementation Contract
    //////////////////////////////////////////////////////////////*/

    constructor(address _authority, address _weth) DepositWithdrawToken(_authority) initializer {
        if (_weth == address(0)) revert BadAddress();

        weth = IWETH(_weth);
    }

    /*///////////////////////////////////////////////////////////////
                            Initializer
    //////////////////////////////////////////////////////////////*/
    function initialize(string memory _name, string memory _symbol, uint8 _dec, address _owner, address _underlying)
        external
        initializer
    {
        __DepositWithdrawToken_init(_name, _symbol, _dec, _owner, _underlying);
    }

    /**
     * @notice Unwrap WETH before depositing to mint wrapped version
     * @param _amount is the amount of coin to deposit
     */
    function deposit(uint256 _amount) external override nonReentrant returns (uint256) {
        _checkPermissions(msg.sender);

        _unwrapWeth(_amount);

        return _depositFor(address(this), msg.sender, _amount);
    }

    /**
     * @notice Unwrap WETH before depositing to mint wrapped version to a recipient
     * @param _recipient is the address of the recipient
     * @param _amount is the amount of coin to deposit
     */
    function depositFor(address _recipient, uint256 _amount) external override nonReentrant returns (uint256) {
        _checkPermissions(msg.sender);
        if (msg.sender != _recipient) _checkPermissions(_recipient);

        _unwrapWeth(_amount);

        return _depositFor(address(this), _recipient, _amount);
    }

    /**
     * @notice Depositing ETH to mint wrapped version
     */
    function depositETH() external payable nonReentrant returns (uint256) {
        _checkPermissions(msg.sender);

        return _depositFor(address(this), msg.sender, msg.value);
    }

    /**
     * @notice Depositing ETH to mint wrapped version to a recipient
     * @param _recipient is the address of the recipient
     */
    function depositETHFor(address _recipient) external payable nonReentrant returns (uint256) {
        _checkPermissions(msg.sender);
        if (msg.sender != _recipient) _checkPermissions(_recipient);

        return _depositFor(address(this), _recipient, msg.value);
    }

    /**
     * @notice Receive ETH from WETH withdraw or ETH deposit
     */
    receive() external payable {
        if (msg.sender != address(weth)) {
            _checkPermissions(msg.sender);

            _depositFor(address(this), msg.sender, msg.value);
        }
    }

    /*///////////////////////////////////////////////////////////////
                            Internal Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Unwraps WETH to ETH
     */
    function _unwrapWeth(uint256 _amount) internal virtual {
        SafeERC20.safeTransferFrom(weth, msg.sender, address(this), _amount);
        weth.withdraw(_amount);
    }

    /**
     * @notice Deposits ETH to mint wrapped version to a recipient
     * @param _recipient is the address of the recipient
     * @param _amount is the amount of underlying to deposit (underlying decimals)
     */
    function _depositFor(address, /*_from*/ address _recipient, uint256 _amount) internal override returns (uint256) {
        if (_amount == 0) revert BadAmount();

        _mint(_recipient, _amount);

        emit Deposit(_recipient, _amount);

        return _amount;
    }

    /**
     * @notice Withdraws ETH by burning the wrapper and sends to a recipient
     * @param _from is the address of the sender
     * @param _recipient is the address of the recipient
     * @param _amount is the amount of wrapper to burn
     */
    function _withdrawTo(address _from, address _recipient, uint256 _amount) internal override returns (uint256) {
        if (_amount == 0) revert BadAmount();

        _burn(_from, _amount);

        emit Withdrawal(_recipient, _amount);

        SafeTransferLib.safeTransferETH(_recipient, _amount);

        return _amount;
    }
}
