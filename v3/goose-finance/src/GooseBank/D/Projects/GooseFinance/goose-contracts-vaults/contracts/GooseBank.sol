// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import '@openzeppelin/contracts/math/Math.sol';
import '@openzeppelin/contracts/math/SafeMath.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/utils/ReentrancyGuard.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/SafeERC20.sol';
import "./interfaces/IMintable.sol";
import "./interfaces/ITreasury.sol";

contract GooseBank is Ownable, ITreasury, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    uint256 public totalFunds;
    uint256 public badDebts;

    uint256 constant mintingReservedBlocks = 50000;
    uint256 public mintingReservedAmount; //Reserved amount for upcoming minting

    IMintable public immutable gooseDollar;
    IMintable public immutable gooseBonds;
    IERC20 public constant busdToken = IERC20(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);

    mapping(address => bool) public authorizedMinters;
    mapping(address => bool) public authorizedBorrowers;

    //Goose Dollar Emission Settings
    uint256 public reservedEmitAmount = 0;
    uint256 public denominationEmitAmount = 403200; //Blocks
    uint256 public minimumEmitAmount = 0; //Min Output Per Block
    uint256 public maximumEmitAmount = 1.5 ether; //Max Output Per Block
    uint256 public emissionRate; //Output Per Block

    //bonds Buy/Sell Settings
    uint256 public bondsInvestPrice = 1 ether;
    uint256 public bondsWithdrawPrice = 0.9 ether;

    event UpdateEmissionSettings(address indexed user, uint256 reserved, uint256 denomination, uint256 minimum, uint256 maximum);
    event UpdateBondPrices(address indexed user, uint256 bondsInvestPrice, uint256 bondsWithdrawPrice);
    event SetMinter(address indexed user, address indexed minter, bool authorized);
    event SetBorrower(address indexed user, address indexed borrower, bool authorized);

    constructor(
        address _gooseDollar,
        address _gooseBonds
    ) public {
        gooseDollar = IMintable(_gooseDollar);
        gooseBonds = IMintable(_gooseBonds);
    }

    modifier isMinter() {
        require(authorizedMinters[msg.sender], "UNAUTHORIZED");
        _;
    }

    modifier isBorrower() {
        require(authorizedBorrowers[msg.sender], "UNAUTHORIZED");
        _;
    }

    function surplus() public view returns (uint256){
        return totalFunds.sub(gooseDollar.totalSupply());
    }

    //Rate = ((Surplus - Reserved) / Denomination) between Minimum and Maximum
    function updateEmissionRate() external override isMinter returns (uint256) {
        uint256 balance = surplus();
        if (balance > reservedEmitAmount) {
            emissionRate = balance.sub(reservedEmitAmount).div(denominationEmitAmount);
            emissionRate = Math.min(maximumEmitAmount, emissionRate);
            emissionRate = Math.max(minimumEmitAmount, emissionRate);
        } else {
            emissionRate = 0;
        }
        mintingReservedAmount = emissionRate.mul(mintingReservedBlocks);
        return emissionRate;
    }

    function mintGooseDollar(uint256 dollarAmount) external override isMinter returns (uint256 mintAmount){
        uint256 balance = surplus();
        if (balance < dollarAmount) {
            mintAmount = Math.min(balance, dollarAmount);
        }else{
            mintAmount = dollarAmount;
        }
        if(mintAmount > 0){
            bool success = gooseDollar.mint(msg.sender, mintAmount);
            require(success, "MINTING FAILED");
        }
        return mintAmount;
    }

    function invest(uint256 dollarAmount) external nonReentrant {
        busdToken.safeTransferFrom(msg.sender, address(this), dollarAmount);
        totalFunds = totalFunds.add(dollarAmount);
        uint256 bondsAmount = dollarAmount.mul(1 ether).div(bondsInvestPrice);
        bool success = gooseBonds.mint(msg.sender, bondsAmount);
        require(success, "MINTING FAILED");
    }

    function withdrawableAmount() public view returns (uint256){
        uint256 balance = surplus();
        if (balance > mintingReservedAmount) {
            return balance.sub(mintingReservedAmount);
        } else {
            return 0;
        }
    }

    function withdraw(uint256 bondsAmount) external nonReentrant {
        uint256 dollarAmount = bondsAmount.mul(bondsWithdrawPrice).div(1 ether);
        require(withdrawableAmount() >= dollarAmount, "INSUFFICIENT FUNDS");
        busdToken.safeTransfer(msg.sender, dollarAmount);
        totalFunds = totalFunds.sub(dollarAmount);
        IERC20(gooseBonds).safeTransferFrom(msg.sender, address(this), bondsAmount);
        bool success = gooseBonds.destroy(bondsAmount);
        require(success, "BURNING FAILED"); //insufficient bonds balance
    }

    function income(uint256 dollarAmount) external override nonReentrant {
        busdToken.safeTransferFrom(msg.sender, address(this), dollarAmount);
        totalFunds = totalFunds.add(dollarAmount);
    }

    function borrow(uint256 dollarAmount) external override isBorrower returns (bool) {
        IERC20(gooseDollar).safeTransferFrom(msg.sender, address(this), dollarAmount);
        busdToken.safeTransfer(msg.sender, dollarAmount);
        return true;
    }

    //Chefs must keep track of debt amount per User per Pool
    function settle(uint256 settleAmount, uint256 debtAmount) external override isBorrower returns (bool) {
        require(debtAmount >= settleAmount, "INVALID AMOUNT");
        busdToken.safeTransferFrom(msg.sender, address(this), settleAmount);
        IERC20(gooseDollar).safeTransfer(msg.sender, settleAmount);
        if (debtAmount > settleAmount) {
            uint256 loss = debtAmount.sub(settleAmount);
            badDebts = badDebts.add(loss);
        }
        return true;
    }

    function updateEmissionSettings(uint256 reserved, uint256 denomination, uint256 minimum, uint256 maximum) external onlyOwner {
        reservedEmitAmount = reserved;
        denominationEmitAmount = denomination;
        minimumEmitAmount = minimum;
        maximumEmitAmount = maximum;

        emit UpdateEmissionSettings(msg.sender, reserved, denomination, minimum, maximum);
    }

    function updateSGoosePrices(uint256 _bondsInvestPrice, uint256 _bondsWithdrawPrice) external onlyOwner {
        bondsInvestPrice = _bondsInvestPrice;
        bondsWithdrawPrice = _bondsWithdrawPrice;

        emit UpdateBondPrices(msg.sender, _bondsInvestPrice, _bondsWithdrawPrice);
    }

    function setMinter(address minter, bool authorized) external onlyOwner {
        authorizedMinters[minter] = authorized;

        emit SetMinter(msg.sender, minter, authorized);
    }

    function setBorrower(address borrower, bool authorized) external onlyOwner {
        authorizedBorrowers[borrower] = authorized;

        emit SetBorrower(msg.sender, borrower, authorized);
    }
}
