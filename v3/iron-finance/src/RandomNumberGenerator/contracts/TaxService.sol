//SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./interfaces/ITaxService.sol";

contract TaxService is Ownable, ITaxService, Initializable {
    using SafeERC20 for IERC20;

    address public iron_;
    address public lottery_;
    address public prizeReservePool_;
    address public burnTitanPool_;

    uint256 public reservePoolRatio_ = 200000;  // 20%
    uint256 public burnTitanPoolRatio_ = 80000; // 80%

    uint256 private constant PRECISION = 1e6;

    function initialize(
        address _iron,
        address _lottery,
        address _prizeReservePool,
        address _burnTitanPool
    ) external initializer onlyOwner() {
        require(
            _iron != address(0) &&
            _lottery != address(0) &&
            _prizeReservePool != address(0) &&
            _burnTitanPool != address(0),
            "Contracts cannot be 0 address"
        );
        iron_ = _iron;
        lottery_ = _lottery;
        prizeReservePool_ = _prizeReservePool;
        burnTitanPool_ = _burnTitanPool;
    }

    //-------------------------------------------------------------------------
    // MODIFIERS
    //-------------------------------------------------------------------------

    /**
     * @notice  Restricts to only the lottery contract.
     */
    modifier onlyLottery() {
        require(address(msg.sender) == lottery_, "Caller is not the lottery");
        _;
    }

    //==============================
    // STATE MODIFYING FUNCTIONS
    //==============================

    function setPrizeReservePool(address _prizeReservePool) external onlyOwner {
        require(_prizeReservePool != address(0), "Contracts cannot be 0 address");
        prizeReservePool_ = _prizeReservePool;
    }

    function setBurnSteelPool(address _burnSteelPool) external onlyOwner {
        require(_burnSteelPool != address(0), "Contracts cannot be 0 address");
        burnTitanPool_ = _burnSteelPool;
    }

    function setLottery(address _lottery) external onlyOwner {
        lottery_ = _lottery;
    }

    function setDistribution(
        uint256 _reservePoolRatio,
        uint256 _burnTitanPoolRatio
    ) external onlyOwner {
        reservePoolRatio_ = _reservePoolRatio;
        burnTitanPoolRatio_ = _burnTitanPoolRatio;
    }

    function collect(uint256 amount) external override onlyLottery {
        uint256 _totalRatio = burnTitanPoolRatio_ + reservePoolRatio_;
        uint256 _burnTitanAmount = (amount * burnTitanPoolRatio_) / _totalRatio;
        uint256 _prizeReserve = amount - _burnTitanAmount;

        IERC20 _iron = IERC20(iron_);
        _iron.safeTransferFrom(lottery_, address(this), amount);

        if (_prizeReserve > 0) {
            _iron.safeTransfer(prizeReservePool_, _prizeReserve);
        }

        if (_burnTitanAmount > 0) {
            _iron.safeTransfer(burnTitanPool_, _burnTitanAmount);
        }
    }
}
