// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/math/Math.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";

import "../../library/bep20/BEP20Upgradeable.sol";
import "../../library/SafeToken.sol";
import "../../cvaults/bsc/lending/BankConfig.sol";
import "../../library/Whitelist.sol";
import "../../cvaults/interface/ILender.sol";
import "../../cvaults/bsc/lending/IStrategyVBNB.sol";

contract VaultBNBTester is ILender, BEP20Upgradeable, ReentrancyGuardUpgradeable, Whitelist {
    using SafeToken for address;
    using SafeBEP20 for IBEP20;

    string public constant warning = "This is a test contract.";

    BankConfig public config;

    uint public glbDebtShare;
    uint public glbDebtVal;
    uint public lastAccrueTime;
    uint public reservePool;

    address public ethVault;
    address public strategyVBNB;

    mapping (address => mapping (address => uint)) private _debt;

    event AddDebt(address indexed pool, address indexed borrower, uint256 debtShare);
    event RemoveDebt(address indexed pool, address indexed borrower, uint256 debtShare);

    event HandOverDebt(address indexed pool, address indexed borrower, address indexed handOverTo, uint256 debtShare);

    modifier accrue(uint msgValue) {
        if (now > lastAccrueTime) {
            uint interest = pendingInterest(msgValue);
            uint toReserve = interest.mul(config.getReservePoolBps()).div(10000);
            reservePool = reservePool.add(toReserve);
            glbDebtVal = glbDebtVal.add(interest);
            lastAccrueTime = now;
        }
        _;
    }

    modifier onlyETHVault {
        require(msg.sender == ethVault, "VaultBNB: not ethVault");
        _;
    }

    receive() external payable {}

    function initialize(string memory name, string memory symbol, uint8 decimals) external initializer {
        __BEP20__init(name, symbol, decimals);
        __ReentrancyGuard_init();
        __Whitelist_init();

        lastAccrueTime = block.timestamp;
    }

    // -------------------- VIEW FUNCTIONS -------------------

    /// @dev Return the pending interest that will be accrued in the next call.
    /// @param msgValue Balance value to subtract off address(this).balance when called from payable functions.
    function pendingInterest(uint msgValue) public view returns (uint) {
        if (now > lastAccrueTime) {
            uint timePast = block.timestamp.sub(lastAccrueTime);
            uint balance = vBNBBalance();
            uint ratePerSec = config.getInterestRate(glbDebtVal, balance);
            return ratePerSec.mul(glbDebtVal).mul(timePast).div(1e18);
        } else {
            return 0;
        }
    }

    /// @dev Return the total BNB entitled to the token holders. Be careful of unaccrued interests.
    function totalBNB() public view returns (uint) {
        return vBNBBalance().add(glbDebtVal).sub(reservePool);
    }

    function vBNBBalance() public view returns(uint) {
        IStrategyVBNB strategy = IStrategyVBNB(strategyVBNB);
        return strategy.supplyBal().sub(strategy.borrowBal());
    }

    function debtValOf(address pool, address account) external view override returns(uint) {
        return debtShareToVal(debtShareOf(pool, account));
    }

    function debtValOfETHVault() external view returns(uint) {
        return debtShareToVal(debtShareOf(address(this), ethVault));
    }

    function debtShareOf(address pool, address account) public view override returns(uint) {
        return _debt[pool][account];
    }

    /// @dev Return the BNB debt value given the debt share. Be careful of unaccrued interests.
    /// @param debtShare The debt share to be converted.
    function debtShareToVal(uint debtShare) public view override returns (uint) {
        if (glbDebtShare == 0) return debtShare; // When there's no share, 1 share = 1 val.
        return debtShare.mul(glbDebtVal).div(glbDebtShare);
    }

    /// @dev Return the debt share for the given debt value. Be careful of unaccrued interests.
    /// @param debtVal The debt value to be converted.
    function debtValToShare(uint debtVal) public view returns (uint) {
        if (glbDebtShare == 0) return debtVal; // When there's no share, 1 share = 1 val.
        return debtVal.mul(glbDebtShare).div(glbDebtVal);
    }

    function getUtilizationInfo() external view override returns(uint total, uint debt) {
        total = totalBNB();
        debt = glbDebtVal;
    }

    // -------------------- EXTERNAL FUNCTIONS -------------------
    /// @dev Add more BNB to the bank. Hope to get some good returns.
    function deposit() external payable accrue(msg.value) nonReentrant {
        uint total = totalBNB();
        uint share = total == 0 ? msg.value : msg.value.mul(totalSupply()).div(total);
        _mint(msg.sender, share);

        uint balance = address(this).balance;
        IStrategyVBNB(strategyVBNB).deposit{ value: balance }(msg.sender, balance);
    }

    /// @dev Withdraw BNB from the bank by burning the share tokens.
    function withdraw(uint share) external accrue(0) nonReentrant {
        uint amount = share.mul(totalBNB()).div(totalSupply());
        _burn(msg.sender, share);
        IStrategyVBNB(strategyVBNB).withdraw(msg.sender, amount);
    }

    function accruedDebtValOf(address pool, address account) external override accrue(0) returns(uint) {
        IStrategyVBNB(strategyVBNB).updateBalance();
        return debtShareToVal(debtShareOf(pool, account));
    }

    // ------------- RESTRICTED FUNCTIONS ----------------
    // @return DebtShares of borrower
    function borrow(address pool, address borrower, uint debtVal) external override accrue(0) onlyWhitelisted returns(uint debtSharesOfBorrower) {
        IStrategyVBNB(strategyVBNB).updateBalance();

        debtVal = Math.min(debtVal, vBNBBalance());
        uint debtShare = debtValToShare(debtVal);

        _debt[pool][borrower] = _debt[pool][borrower].add(debtShare);
        glbDebtShare = glbDebtShare.add(debtShare);
        glbDebtVal = glbDebtVal.add(debtVal);
        emit AddDebt(pool, borrower, debtShare);
        IStrategyVBNB(strategyVBNB).withdraw(msg.sender, debtVal);
        return debtVal;
    }

    // @return DebtShares of borrower
    function repay(address pool, address borrower) public payable override accrue(msg.value) onlyWhitelisted returns(uint debtSharesOfBorrower) {
        uint debtShare = Math.min(debtValToShare(msg.value), _debt[pool][borrower]);
        if (debtShare > 0) {
            uint debtVal = debtShareToVal(debtShare);
            _debt[pool][borrower] = _debt[pool][borrower].sub(debtShare);
            glbDebtShare = glbDebtShare.sub(debtShare);
            glbDebtVal = glbDebtVal.sub(debtVal);
            emit RemoveDebt(pool, borrower, debtShare);
        }

        uint balance = address(this).balance;
        if(balance > 0) {
            IStrategyVBNB(strategyVBNB).deposit{ value: balance }(borrower, balance);
        }

        return _debt[pool][borrower];
    }

    function handOverDebtToTreasury(address pool, address borrower) external override accrue(0) onlyETHVault returns(uint debtSharesOfBorrower) {
        uint debtShare = _debt[pool][borrower];
        _debt[pool][borrower] = 0;
        _debt[address(this)][ethVault] = _debt[address(this)][ethVault].add(debtShare); // The debt belongs to treasury

        if (debtShare > 0) {
            emit HandOverDebt(pool, borrower, msg.sender, debtShare);
        }

        return debtShare;
    }

    function repayTreasuryDebt() external payable override accrue(msg.value) onlyETHVault returns(uint debtSharesOfBorrower) {
        return repay(address(this), ethVault);
    }

    function setETHVault(address newETHVault) external onlyOwner {
        require(ethVault == address(0), "VaultBNB: set ethVault only once");
        ethVault = newETHVault;
    }

    function setStrategyVBNB(address newStrategyVBNB) external onlyOwner {
        require(strategyVBNB == address(0), "VaultBNB: set strategyVBNB only once");
        strategyVBNB = newStrategyVBNB;
    }

    /// @dev Update bank configuration to a new address. Must only be called by owner.
    /// @param newConfig The new configurator address.
    function updateConfig(address newConfig) external onlyOwner {
        config = BankConfig(newConfig);
    }

    /// @dev Withdraw BNB reserve for underwater positions to the given address.
    /// @param to The address to transfer BNB to.
    /// @param value The number of BNB tokens to withdraw. Must not exceed `reservePool`.
    function withdrawReserve(address to, uint256 value) external onlyOwner nonReentrant {
        reservePool = reservePool.sub(value);
        IStrategyVBNB(strategyVBNB).withdraw(to, value);
    }

    /// @dev Reduce BNB reserve, effectively giving them to the depositors.
    /// @param value The number of BNB reserve to reduce.
    function reduceReserve(uint256 value) external onlyOwner {
        reservePool = reservePool.sub(value);
    }

    /// @dev Recover BEP20 tokens that were accidentally sent to this smart contract.
    /// @param token The token contract. Can be anything. This contract should not hold BEP20 tokens.
    /// @param to The address to send the tokens to.
    /// @param value The number of tokens to transfer to `to`.
    function recover(address token, address to, uint256 value) external onlyOwner {
        token.safeTransfer(to, value);
    }
}
