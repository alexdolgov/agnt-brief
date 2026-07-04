// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "hardhat/console.sol";

interface IIron {
    function poolBurnFrom(address _address, uint256 _amount) external;
    function poolMint(address _address, uint256 _amount) external;
    function totalSupply() external returns (uint256);
}

contract IronPool is Initializable, OwnableUpgradeable, UUPSUpgradeable, ReentrancyGuardUpgradeable {
    using SafeMath for uint256;
    using SafeERC20 for ERC20;

    // events

    event FeeChanged(uint256 mintingFee, uint256 redemptionFee);
    event FeeControllerChanged(address from, address to);
    event FeeWithdrawn(address to, uint256 amount);
    event MaxIronSupplyChanged(uint256 from, uint256 to);

    // states

    uint256 public constant PRECISION = 1e6; // 100%
    uint256 private constant MAX_MINTING_FEE = 10000; // 1%
    uint256 private constant MAX_REDEMPTION_FEE = 20000; // 2%

    ERC20 public collateral;
    IIron public iron;
    uint256 public missingDecimals;
    uint256 public mintingFee;
    uint256 public redemptionFee;
    uint256 public feeBalance;
    address public feeController;

    /// @notice total amount
    uint256 public MAX_IRON_SUPPLY;

    /** This required by UUPS pattern */
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    function initialize(
        address _iron,
        address _collateral,
        uint256 _mintingFee,
        uint256 _redemptionFee,
        uint256 _maxIronSupply
    ) external initializer {
        __Ownable_init();
        __ReentrancyGuard_init();
        require(_iron != address(0), "zeroAddress");
        require(_collateral != address(0), "zeroAddress");
        iron = IIron(_iron);
        collateral = ERC20(_collateral);
        missingDecimals = 10**(18 - collateral.decimals());
        mintingFee = _mintingFee;
        redemptionFee = _redemptionFee;
        MAX_IRON_SUPPLY = _maxIronSupply;
    }

    /**
     * Swap collateral to IRON
     */
    function mint(uint256 collateralAmount) public nonReentrant {
        require(collateralAmount != 0, "invalidInput");
        uint256 feeAmount = collateralAmount.mul(mintingFee).div(PRECISION);
        uint256 ironAmount = collateralAmount.sub(feeAmount).mul(missingDecimals);
        require(iron.totalSupply().add(ironAmount) <= MAX_IRON_SUPPLY, "> maxIronSupply");

        feeBalance = feeBalance.add(feeAmount);
        collateral.safeTransferFrom(msg.sender, address(this), collateralAmount);
        iron.poolMint(msg.sender, ironAmount);
    }

    /**
     * Swap collateral to an exact amount of IRON
     */
    function mintExact(uint256 ironAmount) public nonReentrant {
        require(ironAmount != 0, "invalidOutput");
        require(iron.totalSupply().add(ironAmount) <= MAX_IRON_SUPPLY, "> maxIronSupply");
        uint256 collateralAmount = ironAmount.div(missingDecimals);
        uint256 collateralAmountWithFee = collateralAmount.mul(PRECISION).div(PRECISION.sub(mintingFee));
        uint256 feeAmount = collateralAmountWithFee.sub(collateralAmount);

        feeBalance = feeBalance.add(feeAmount);
        collateral.safeTransferFrom(msg.sender, address(this), collateralAmountWithFee);
        iron.poolMint(msg.sender, ironAmount);
    }

    /**
     * Swap IRON to collateral
     */
    function redeem(uint256 ironAmount) public nonReentrant {
        require(ironAmount != 0, "invalidInput");
        uint256 collateralAmount = ironAmount.div(missingDecimals);
        uint256 feeAmount = collateralAmount.mul(redemptionFee).div(PRECISION);
        uint256 collateralAmountPostFee = collateralAmount.sub(feeAmount);
        feeBalance = feeBalance.add(feeAmount);

        require(getReserveBalance() >= collateralAmountPostFee, "insufficientReserves");

        iron.poolBurnFrom(msg.sender, ironAmount);
        collateral.safeTransfer(msg.sender, collateralAmountPostFee);
    }

    /**
     * Swap IRON to exact amount of collateral
     */
    function redeemExact(uint256 collateralAmount) public nonReentrant {
        require(collateralAmount != 0, "invalidOutput");
        uint256 collateralAmountWithFee = collateralAmount.mul(PRECISION).div(PRECISION.sub(redemptionFee));
        uint256 feeAmount = collateralAmountWithFee.sub(collateralAmount);
        uint256 ironAmount = collateralAmountWithFee.mul(missingDecimals);
        feeBalance = feeBalance.add(feeAmount);

        require(getReserveBalance() >= collateralAmount, "insufficientReserves");

        iron.poolBurnFrom(msg.sender, ironAmount);
        collateral.safeTransfer(msg.sender, collateralAmount);
    }

    function getReserveBalance() public view returns (uint256) {
        return collateral.balanceOf(address(this)).sub(feeBalance);
    }

    // ========== Operating functions ==========

    function setFee(uint256 _mintingFee, uint256 _redemptionFee) external onlyOwner {
        require(mintingFee <= MAX_MINTING_FEE, "> MAX_MINTING_FEE");
        require(redemptionFee <= MAX_REDEMPTION_FEE, "> MAX_REDEMPTION_FEE");
        mintingFee = _mintingFee;
        redemptionFee = _redemptionFee;
        emit FeeChanged(_mintingFee, _redemptionFee);
    }

    function withdrawFee(address to, uint256 amount) external {
        require(msg.sender == owner() || msg.sender == feeController, "!ownerOrFeeController");
        require(to != address(0), "zeroAddress");
        require(amount > 0 && amount <= feeBalance, "invalid amount");
        feeBalance = feeBalance - amount;
        collateral.safeTransfer(to, amount);
        emit FeeWithdrawn(to, amount);
    }

    function setFeeController(address controller) external onlyOwner {
        require(controller != address(0), "zeroAddress");
        address oldController = feeController;
        feeController = controller;
        emit FeeControllerChanged(oldController, controller);
    }

    function setMaxIronSupply(uint256 maxSupply) external onlyOwner {
        uint256 oldValue = MAX_IRON_SUPPLY;
        MAX_IRON_SUPPLY = maxSupply;
        emit MaxIronSupplyChanged(oldValue, maxSupply);
    }
}
