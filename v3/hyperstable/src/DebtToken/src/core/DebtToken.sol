// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC3156FlashLender} from "@openzeppelin/contracts/interfaces/IERC3156FlashLender.sol";
import {IERC3156FlashBorrower} from "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import {OwnableRoles} from "solady/auth/OwnableRoles.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {IDebtToken} from "../interfaces/IDebtToken.sol";

contract DebtToken is IDebtToken, IERC3156FlashLender, ERC20, OwnableRoles {
    using FixedPointMathLib for uint256;

    uint256 public constant MINTER_ROLE = _ROLE_0;
    uint256 public constant BURNER_ROLE = _ROLE_1;
    bytes32 public constant CALLBACK_SUCCESS = keccak256("ERC3156FlashBorrower.onFlashLoan");

    uint256 public flashMintLimit = 5_000_000e18; // 5M USH
    uint256 public flashMintFee = 0.01e18; // 1%
    address public feeReceiver;

    event NewFeeReceiver(address oldReceiver, address newReceiver);
    event NewFlashMintFee(uint256 oldFee, uint256 newFee);
    event NewFlashMintLimit(uint256 oldLimit, uint256 newLimit);

    error InvalidBorrowerCallback();
    error RepayNotApproved();
    error UnsupportedToken();
    error AmountAboveLimit();
    error InvalidFeeReceiver();

    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        _initializeOwner(msg.sender);
        feeReceiver = msg.sender;
    }

    function setFlashMintLimit(uint256 _newFlashMintLimit) external onlyOwner {
        emit NewFlashMintLimit(flashMintLimit, _newFlashMintLimit);

        flashMintLimit = _newFlashMintLimit;
    }

    function setFlashMintFee(uint256 _newFlashMintFee) external onlyOwner {
        emit NewFlashMintFee(flashMintFee, _newFlashMintFee);

        flashMintFee = _newFlashMintFee;
    }

    function setFeeReceiver(address _newFeeReceiver) external onlyOwner {
        if (_newFeeReceiver == address(0)) {
            revert InvalidFeeReceiver();
        }

        feeReceiver = _newFeeReceiver;

        emit NewFeeReceiver(feeReceiver, _newFeeReceiver);
    }

    function mint(address _to, uint256 _amount) external onlyRoles(MINTER_ROLE) {
        _mint(_to, _amount);
    }

    function burn(address _from, uint256 _amount) external onlyRoles(BURNER_ROLE) {
        _burn(_from, _amount);
    }

    function maxFlashLoan(address _token) external view override returns (uint256) {
        if (_token != address(this)) {
            return 0;
        }

        return _getFlashMintLimit();
    }

    function flashFee(address _token, uint256 _amount) external view override returns (uint256) {
        if (_token != address(this)) {
            revert UnsupportedToken();
        }

        return _flashFee(_amount);
    }

    function flashLoan(IERC3156FlashBorrower _receiver, address _token, uint256 _amount, bytes calldata _data)
        external
        override
        returns (bool)
    {
        if (_token != address(this)) {
            revert UnsupportedToken();
        }

        if (_amount > _getFlashMintLimit()) {
            revert AmountAboveLimit();
        }

        uint256 fee = _flashFee(_amount);

        _mint(address(_receiver), _amount);

        if (_receiver.onFlashLoan(msg.sender, address(this), _amount, fee, _data) != CALLBACK_SUCCESS) {
            revert InvalidBorrowerCallback();
        }

        _spendAllowance(address(_receiver), address(this), _amount + fee);

        _burn(address(_receiver), _amount);

        _transfer(address(_receiver), feeReceiver, fee);

        return true;
    }

    function _flashFee(uint256 _amount) internal view returns (uint256) {
        return _amount.mulWad(flashMintFee);
    }

    function _getFlashMintLimit() internal view returns (uint256) {
        uint256 left = type(uint256).max - totalSupply();

        uint256 limit = flashMintLimit;

        return left > limit ? limit : left;
    }
}
