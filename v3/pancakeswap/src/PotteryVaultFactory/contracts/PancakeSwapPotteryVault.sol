// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import {Ownable} from "@openzeppelin-4.6.0/contracts/access/Ownable.sol";
import {SafeERC20, IERC20} from "@openzeppelin-4.6.0/contracts/token/ERC20/utils/SafeERC20.sol";
import {Share} from "./Share.sol";
import {SortitionSumTreeFactory} from "./utils/SortitionSumTreeFactory.sol";
import {UniformRandomNumber} from "./utils/UniformRandomNumber.sol";
import {Vault} from "./utils/Vault.sol";
import {Pottery} from "./utils/Pottery.sol";
import {IPancakeSwapPotteryVault} from "./interfaces/IPancakeSwapPotteryVault.sol";
import {IPancakeSwapPotteryDraw} from "./interfaces/IPancakeSwapPotteryDraw.sol";
import {ICakePool} from "./interfaces/ICakePool.sol";

contract PancakeSwapPotteryVault is Share, IPancakeSwapPotteryVault, Ownable {
    using SafeERC20 for IERC20;
    using SortitionSumTreeFactory for SortitionSumTreeFactory.SortitionSumTrees;

    IERC20 immutable cake;
    ICakePool immutable cakePool;
    IPancakeSwapPotteryDraw immutable potteryDraw;
    address keeper;

    uint32 public constant LOCK_PERIOD = 10 weeks;
    uint256 public constant MIN_LOCK_AMOUNT = 0.00001 ether;
    uint256 immutable lockTime;
    uint256 public lockStartTime;
    uint256 public lockEndTime;
    Vault.Status status;

    uint256 public totalLockCake;
    uint256 immutable maxTotalDeposit;

    uint16 public burnPercentage = 7000; //70%

    SortitionSumTreeFactory.SortitionSumTrees internal sortitionSumTrees;
    bytes32 private constant TREE_KEY = keccak256("PancakePottery/Shares");
    uint8 private constant MAX_TREE_LEAVES = 5;

    event Lock(address indexed admin, uint256 indexed startTime, uint256 lockAmount);
    event Unlock(
        address indexed admin,
        uint256 indexed endTime,
        uint256 earnAmount,
        uint256 burnAmount,
        uint256 apyAmount
    );

    event SetKeeper(address admin, address keeper);
    event SetBurnPercentage(address admin, uint16 burnPercentage);

    modifier onlyKeeperOrOwner() {
        require(msg.sender == keeper || msg.sender == owner(), "only keeper or owner");
        _;
    }

    constructor(
        IERC20 _cake,
        ICakePool _cakePool,
        IPancakeSwapPotteryDraw _potteryDraw,
        address _admin,
        address _keeper,
        uint256 _lockTime,
        uint256 _maxTotalDeposit
    ) Share("Share", "SHARE") {
        require(
            address(_cake) != address(0) &&
                address(_cakePool) != address(0) &&
                address(_potteryDraw) != address(0) &&
                _admin != address(0) &&
                _keeper != address(0),
            "zero address"
        );
        require(_lockTime > block.timestamp && _lockTime <= block.timestamp + 3 weeks, "lock time not reasonable");
        require(_maxTotalDeposit > 0, "zero total deposit");

        cakePool = _cakePool;
        cake = _cake;
        potteryDraw = _potteryDraw;
        keeper = _keeper;
        lockTime = _lockTime;
        maxTotalDeposit = _maxTotalDeposit;
        status = Vault.Status.BEFORE_LOCK;

        transferOwnership(_admin);

        sortitionSumTrees.createTree(TREE_KEY, MAX_TREE_LEAVES);
    }

    function _beforeTokenTransfer(
        address _from,
        address _to,
        uint256 _amount
    ) internal virtual override {
        super._beforeTokenTransfer(_from, _to, _amount);

        // optimize: ignore transfers to self
        if (_from == _to) revert("transfer to same address");

        // only before the locking that user can change the ticket
        if (status == Vault.Status.BEFORE_LOCK) {
            if (_from != address(0)) {
                uint256 fromBalance = balanceOf(_from) - _amount;
                sortitionSumTrees.set(TREE_KEY, fromBalance, generateUserId(_from));
            }

            if (_to != address(0)) {
                uint256 toBalance = balanceOf(_to) + _amount;
                sortitionSumTrees.set(TREE_KEY, toBalance, generateUserId(_to));
            }
        }
    }

    function deposit(uint256 _assets, address _receiver) external override returns (uint256 shares) {
        // deposit only allowed before lock
        require(status == Vault.Status.BEFORE_LOCK, "Not allow to deposit");
        require(_assets <= _maxDeposit(), "over max deposit");
        shares = previewDeposit(_assets);
        require(shares != 0, "zero shares");

        // Need to transfer before minting or ERC777s could reenter.
        cake.safeTransferFrom(msg.sender, address(this), _assets);

        _mint(_receiver, shares);

        emit Deposit(msg.sender, _receiver, _assets, shares);
    }

    function mint(uint256 _shares, address _receiver) external override returns (uint256 assets) {
        // mint only allowed before lock
        require(status == Vault.Status.BEFORE_LOCK, "Not allow to mint");
        assets = previewMint(_shares);
        // No need to check for rounding error, previewMint rounds up.

        require(assets <= _maxDeposit(), "over max deposit");
        // Need to transfer before minting or ERC777s could reenter.
        cake.safeTransferFrom(msg.sender, address(this), assets);

        _mint(_receiver, _shares);

        emit Deposit(msg.sender, _receiver, assets, _shares);
    }

    function withdraw(
        uint256 _assets,
        address _receiver,
        address _owner
    ) external override returns (uint256 shares) {
        // withdraw only allowed after unlock
        require(status == Vault.Status.UNLOCK, "Not allow to withdraw");
        shares = previewWithdraw(_assets);
        if (msg.sender != _owner) _allowances[_owner][msg.sender] -= shares;

        _burn(_owner, shares);
        cake.safeTransfer(_receiver, _assets);

        emit Withdraw(msg.sender, _receiver, _owner, _assets, shares);
    }

    function redeem(
        uint256 _shares,
        address _receiver,
        address _owner
    ) external override returns (uint256 assets) {
        // redeem only allowed after unlock
        require(status == Vault.Status.UNLOCK, "Not allow to redeem");
        if (msg.sender != _owner) _allowances[_owner][msg.sender] -= _shares;

        assets = previewRedeem(_shares);
        require(assets != 0, "zero assets");

        _burn(_owner, _shares);
        cake.safeTransfer(_receiver, assets);

        emit Withdraw(msg.sender, _receiver, _owner, assets, _shares);
    }

    function asset() public view override returns (address) {
        return address(cake);
    }

    function totalAssets() public view override returns (uint256) {
        return cake.balanceOf(address(this));
    }

    function maxDeposit(address) external view override returns (uint256) {
        return _maxDeposit();
    }

    function maxMint(address) external pure override returns (uint256) {
        return type(uint256).max;
    }

    function maxWithdraw(address _owner) external view override returns (uint256) {
        return convertToAssets(balanceOf(_owner));
    }

    function maxRedeem(address _owner) external view override returns (uint256) {
        return balanceOf(_owner);
    }

    function convertToShares(uint256 _assets) public view override returns (uint256) {
        return totalSupply() == 0 ? _assets : (_assets * totalSupply()) / totalAssets();
    }

    function convertToAssets(uint256 _shares) public view override returns (uint256) {
        return totalSupply() == 0 ? _shares : (_shares * totalAssets()) / totalSupply();
    }

    function previewDeposit(uint256 _assets) public view override returns (uint256) {
        return convertToShares(_assets);
    }

    function previewMint(uint256 _shares) public view override returns (uint256) {
        return convertToAssets(_shares);
    }

    function previewWithdraw(uint256 _assets) public view override returns (uint256) {
        return convertToShares(_assets);
    }

    function previewRedeem(uint256 _shares) public view override returns (uint256) {
        return convertToAssets(_shares);
    }

    function _maxDeposit() internal view returns (uint256) {
        return (status == Vault.Status.BEFORE_LOCK) ? maxTotalDeposit - totalAssets() : 0;
    }

    function lockCake() external override onlyKeeperOrOwner {
        require(status == Vault.Status.BEFORE_LOCK, "status not correct");
        Pottery.Pot memory pot = potteryDraw.getPot(address(this));
        require(pot.totalPrize > 0, "pottery not exist");
        require(pot.numOfDraw == 0, "pottery cancelled");
        require(lockTime <= block.timestamp, "before lock time");
        uint256 balance = totalAssets();
        require(balance > MIN_LOCK_AMOUNT, "too low balance to lock");
        if (balance < maxTotalDeposit) potteryDraw.redeemPrizeByRatio();
        cake.safeIncreaseAllowance(address(cakePool), balance);
        cakePool.deposit(balance, LOCK_PERIOD);
        totalLockCake = balance;
        lockStartTime = block.timestamp;
        status = Vault.Status.LOCK;

        emit Lock(msg.sender, lockStartTime, totalLockCake);
    }

    function unlockCake() external override onlyKeeperOrOwner {
        require(status == Vault.Status.LOCK, "status not correct");
        require(passLockTime(), "lock not over");
        cakePool.withdrawAll();
        uint256 balance = cake.balanceOf(address(this));
        uint256 totalEarnCake = balance > totalLockCake ? balance - totalLockCake : 0;
        uint256 burnAmount = (totalEarnCake * burnPercentage) / 10000;
        address treasury = potteryDraw.getTreasury();
        if (burnAmount > 0) cake.safeTransfer(treasury, burnAmount);
        uint256 apyEarnCake = totalEarnCake - burnAmount;
        lockEndTime = block.timestamp;
        status = Vault.Status.UNLOCK;

        emit Unlock(msg.sender, lockEndTime, totalEarnCake, burnAmount, apyEarnCake);
    }

    function draw(uint256[] memory _nums) external view override returns (address[] memory users) {
        users = new address[](_nums.length);
        for (uint256 i = 0; i < _nums.length; i++) {
            uint256 number = UniformRandomNumber.uniform(_nums[i], totalSupply());
            bytes32 winnerId = sortitionSumTrees.draw(TREE_KEY, number);
            users[i] = address(uint160(uint256(winnerId)));
        }
    }

    function getNumberOfTickets(address _user) external view override returns (uint256) {
        return sortitionSumTrees.stakeOf(TREE_KEY, generateUserId(_user));
    }

    function getLockTime() external view override returns (uint256) {
        return lockTime;
    }

    function getMaxTotalDeposit() external view override returns (uint256) {
        return maxTotalDeposit;
    }

    function passLockTime() public view override returns (bool) {
        return block.timestamp > lockStartTime + LOCK_PERIOD;
    }

    function getStatus() public view override returns (Vault.Status) {
        return status;
    }

    function generateUserId(address _user) public pure override returns (bytes32) {
        return bytes32(uint256(uint160(_user)));
    }

    function setKeeper(address _keeper) external onlyOwner {
        require(_keeper != address(0), "zero address");
        keeper = _keeper;

        emit SetKeeper(msg.sender, _keeper);
    }

    function setBurnPercentage(uint16 _burnPercentage) external onlyOwner {
        require(_burnPercentage <= 8000, "over limit");
        burnPercentage = _burnPercentage;

        emit SetBurnPercentage(msg.sender, _burnPercentage);
    }
}
