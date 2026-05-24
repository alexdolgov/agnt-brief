// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "./Interfaces/IBorrowerOperations.sol";
import "./Interfaces/IVaultManager.sol";
import "./Interfaces/IUSDLToken.sol";
import "./Interfaces/ICollSurplusPool.sol";
import "./Interfaces/ISortedVaults.sol";
import "./Interfaces/ILOANStaking.sol";
import "./Dependencies/LiquidLoansBase.sol";
import "./Dependencies/Ownable.sol";
import "./Dependencies/CheckContract.sol";
import "./Dependencies/console.sol";

contract BorrowerOperations is LiquidLoansBase, Ownable, CheckContract, IBorrowerOperations {
    string constant public NAME = "BorrowerOperations";

    // --- Connected contract declarations ---

    IVaultManager public vaultManager;

    address stabilityPoolAddress;

    address gasPoolAddress;

    ICollSurplusPool collSurplusPool;

    ILOANStaking public loanStaking;
    address public loanStakingAddress;

    IUSDLToken public usdlToken;

    // A doubly linked list of Vaults, sorted by their collateral ratios
    ISortedVaults public sortedVaults;

    /* --- Variable container structs  ---

    Used to hold, return and assign variables inside a function, in order to avoid the error:
    "CompilerError: Stack too deep". */

     struct LocalVariables_adjustVault {
        uint price;
        uint collChange;
        uint netDebtChange;
        bool isCollIncrease;
        uint debt;
        uint coll;
        uint oldICR;
        uint newICR;
        uint newTCR;
        uint USDLFee;
        uint newDebt;
        uint newColl;
        uint stake;
    }

    struct LocalVariables_openVault {
        uint price;
        uint USDLFee;
        uint netDebt;
        uint compositeDebt;
        uint ICR;
        uint NICR;
        uint stake;
        uint arrayIndex;
    }

    struct ContractsCache {
        IVaultManager vaultManager;
        IActivePool activePool;
        IUSDLToken usdlToken;
    }

    enum BorrowerOperation {
        openVault,
        closeVault,
        adjustVault
    }

    event VaultManagerAddressChanged(address _newVaultManagerAddress);
    event ActivePoolAddressChanged(address _activePoolAddress);
    event DefaultPoolAddressChanged(address _defaultPoolAddress);
    event StabilityPoolAddressChanged(address _stabilityPoolAddress);
    event GasPoolAddressChanged(address _gasPoolAddress);
    event CollSurplusPoolAddressChanged(address _collSurplusPoolAddress);
    event PriceFeedAddressChanged(address  _newPriceFeedAddress);
    event SortedVaultsAddressChanged(address _sortedVaultsAddress);
    event USDLTokenAddressChanged(address _usdlTokenAddress);
    event LOANStakingAddressChanged(address _loanStakingAddress);

    event VaultCreated(address indexed _borrower, uint arrayIndex);
    event VaultUpdated(address indexed _borrower, uint _debt, uint _coll, uint stake, BorrowerOperation operation);
    event USDLBorrowingFeePaid(address indexed _borrower, uint _USDLFee);
    
    // --- Dependency setters ---

    function setAddresses(
        address _vaultManagerAddress,
        address _activePoolAddress,
        address _defaultPoolAddress,
        address _stabilityPoolAddress,
        address _gasPoolAddress,
        address _collSurplusPoolAddress,
        address _priceFeedAddress,
        address _sortedVaultsAddress,
        address _usdlTokenAddress,
        address _loanStakingAddress
    )
        external
        override
        onlyOwner
    {
        // This makes impossible to open a vault with zero withdrawn USDL
        assert(MIN_NET_DEBT > 0);

        checkContract(_vaultManagerAddress);
        checkContract(_activePoolAddress);
        checkContract(_defaultPoolAddress);
        checkContract(_stabilityPoolAddress);
        checkContract(_gasPoolAddress);
        checkContract(_collSurplusPoolAddress);
        checkContract(_priceFeedAddress);
        checkContract(_sortedVaultsAddress);
        checkContract(_usdlTokenAddress);
        checkContract(_loanStakingAddress);

        vaultManager = IVaultManager(_vaultManagerAddress);
        activePool = IActivePool(_activePoolAddress);
        defaultPool = IDefaultPool(_defaultPoolAddress);
        stabilityPoolAddress = _stabilityPoolAddress;
        gasPoolAddress = _gasPoolAddress;
        collSurplusPool = ICollSurplusPool(_collSurplusPoolAddress);
        priceFeed = IPriceFeed(_priceFeedAddress);
        sortedVaults = ISortedVaults(_sortedVaultsAddress);
        usdlToken = IUSDLToken(_usdlTokenAddress);
        loanStakingAddress = _loanStakingAddress;
        loanStaking = ILOANStaking(_loanStakingAddress);

        emit VaultManagerAddressChanged(_vaultManagerAddress);
        emit ActivePoolAddressChanged(_activePoolAddress);
        emit DefaultPoolAddressChanged(_defaultPoolAddress);
        emit StabilityPoolAddressChanged(_stabilityPoolAddress);
        emit GasPoolAddressChanged(_gasPoolAddress);
        emit CollSurplusPoolAddressChanged(_collSurplusPoolAddress);
        emit PriceFeedAddressChanged(_priceFeedAddress);
        emit SortedVaultsAddressChanged(_sortedVaultsAddress);
        emit USDLTokenAddressChanged(_usdlTokenAddress);
        emit LOANStakingAddressChanged(_loanStakingAddress);

        _renounceOwnership();
    }

    // --- Borrower Vault Operations ---

    function openVault(uint _maxFeePercentage, uint _USDLAmount, address _upperHint, address _lowerHint) external payable override {
        ContractsCache memory contractsCache = ContractsCache(vaultManager, activePool, usdlToken);
        LocalVariables_openVault memory vars;

        vars.price = priceFeed.fetchPrice();
        bool isRecoveryMode = _checkRecoveryMode(vars.price);

        _requireValidMaxFeePercentage(_maxFeePercentage, isRecoveryMode);
        _requireVaultisNotActive(contractsCache.vaultManager, msg.sender);

        vars.USDLFee;
        vars.netDebt = _USDLAmount;

        if (!isRecoveryMode) {
            vars.USDLFee = _triggerBorrowingFee(contractsCache.vaultManager, contractsCache.usdlToken, _USDLAmount, _maxFeePercentage);
            vars.netDebt = vars.netDebt.add(vars.USDLFee);
        }
        _requireAtLeastMinNetDebt(vars.netDebt);

        // ICR is based on the composite debt, i.e. the requested USDL amount + USDL borrowing fee + USDL gas comp.
        vars.compositeDebt = _getCompositeDebt(vars.netDebt);
        assert(vars.compositeDebt > 0);
        
        vars.ICR = LiquidLoansMath._computeCR(msg.value, vars.compositeDebt, vars.price);
        vars.NICR = LiquidLoansMath._computeNominalCR(msg.value, vars.compositeDebt);

        if (isRecoveryMode) {
            _requireICRisAboveCCR(vars.ICR);
        } else {
            _requireICRisAboveMCR(vars.ICR);
            uint newTCR = _getNewTCRFromVaultChange(msg.value, true, vars.compositeDebt, true, vars.price);  // bools: coll increase, debt increase
            _requireNewTCRisAboveCCR(newTCR); 
        }

        // Set the vault struct's properties
        contractsCache.vaultManager.setVaultStatus(msg.sender, 1);
        contractsCache.vaultManager.increaseVaultColl(msg.sender, msg.value);
        contractsCache.vaultManager.increaseVaultDebt(msg.sender, vars.compositeDebt);

        contractsCache.vaultManager.updateVaultRewardSnapshots(msg.sender);
        vars.stake = contractsCache.vaultManager.updateStakeAndTotalStakes(msg.sender);

        sortedVaults.insert(msg.sender, vars.NICR, _upperHint, _lowerHint);
        vars.arrayIndex = contractsCache.vaultManager.addVaultOwnerToArray(msg.sender);
        emit VaultCreated(msg.sender, vars.arrayIndex);

        // Move the eth to the Active Pool, and mint the USDLAmount to the borrower
        _activePoolAddColl(contractsCache.activePool, msg.value);
        _withdrawUSDL(contractsCache.activePool, contractsCache.usdlToken, msg.sender, _USDLAmount, vars.netDebt);
        // Move the USDL gas compensation to the Gas Pool
        _withdrawUSDL(contractsCache.activePool, contractsCache.usdlToken, gasPoolAddress, USDL_GAS_COMPENSATION, USDL_GAS_COMPENSATION);

        emit VaultUpdated(msg.sender, vars.compositeDebt, msg.value, vars.stake, BorrowerOperation.openVault);
        emit USDLBorrowingFeePaid(msg.sender, vars.USDLFee);
    }

    // Send ETH as collateral to a vault
    function addColl(address _upperHint, address _lowerHint) external payable override {
        _adjustVault(msg.sender, 0, 0, false, _upperHint, _lowerHint, 0);
    }

    // Send ETH as collateral to a vault. Called by only the Stability Pool.
    function moveETHGainToVault(address _borrower, address _upperHint, address _lowerHint) external payable override {
        _requireCallerIsStabilityPool();
        _adjustVault(_borrower, 0, 0, false, _upperHint, _lowerHint, 0);
    }

    // Withdraw ETH collateral from a vault
    function withdrawColl(uint _collWithdrawal, address _upperHint, address _lowerHint) external override {
        _adjustVault(msg.sender, _collWithdrawal, 0, false, _upperHint, _lowerHint, 0);
    }

    // Withdraw USDL tokens from a vault: mint new USDL tokens to the owner, and increase the vault's debt accordingly
    function withdrawUSDL(uint _maxFeePercentage, uint _USDLAmount, address _upperHint, address _lowerHint) external override {
        _adjustVault(msg.sender, 0, _USDLAmount, true, _upperHint, _lowerHint, _maxFeePercentage);
    }

    // Repay USDL tokens to a Vault: Burn the repaid USDL tokens, and reduce the vault's debt accordingly
    function repayUSDL(uint _USDLAmount, address _upperHint, address _lowerHint) external override {
        _adjustVault(msg.sender, 0, _USDLAmount, false, _upperHint, _lowerHint, 0);
    }

    function adjustVault(uint _maxFeePercentage, uint _collWithdrawal, uint _USDLChange, bool _isDebtIncrease, address _upperHint, address _lowerHint) external payable override {
        _adjustVault(msg.sender, _collWithdrawal, _USDLChange, _isDebtIncrease, _upperHint, _lowerHint, _maxFeePercentage);
    }

    /*
    * _adjustVault(): Alongside a debt change, this function can perform either a collateral top-up or a collateral withdrawal. 
    *
    * It therefore expects either a positive msg.value, or a positive _collWithdrawal argument.
    *
    * If both are positive, it will revert.
    */
    function _adjustVault(address _borrower, uint _collWithdrawal, uint _USDLChange, bool _isDebtIncrease, address _upperHint, address _lowerHint, uint _maxFeePercentage) internal {
        ContractsCache memory contractsCache = ContractsCache(vaultManager, activePool, usdlToken);
        LocalVariables_adjustVault memory vars;

        vars.price = priceFeed.fetchPrice();
        bool isRecoveryMode = _checkRecoveryMode(vars.price);

        if (_isDebtIncrease) {
            _requireValidMaxFeePercentage(_maxFeePercentage, isRecoveryMode);
            _requireNonZeroDebtChange(_USDLChange);
        }
        _requireSingularCollChange(_collWithdrawal);
        _requireNonZeroAdjustment(_collWithdrawal, _USDLChange);
        _requireVaultisActive(contractsCache.vaultManager, _borrower);

        // Confirm the operation is either a borrower adjusting their own vault, or a pure ETH transfer from the Stability Pool to a vault
        assert(msg.sender == _borrower || (msg.sender == stabilityPoolAddress && msg.value > 0 && _USDLChange == 0));

        contractsCache.vaultManager.applyPendingRewards(_borrower);

        // Get the collChange based on whether or not ETH was sent in the transaction
        (vars.collChange, vars.isCollIncrease) = _getCollChange(msg.value, _collWithdrawal);

        vars.netDebtChange = _USDLChange;

        // If the adjustment incorporates a debt increase and system is in Normal Mode, then trigger a borrowing fee
        if (_isDebtIncrease && !isRecoveryMode) { 
            vars.USDLFee = _triggerBorrowingFee(contractsCache.vaultManager, contractsCache.usdlToken, _USDLChange, _maxFeePercentage);
            vars.netDebtChange = vars.netDebtChange.add(vars.USDLFee); // The raw debt change includes the fee
        }

        vars.debt = contractsCache.vaultManager.getVaultDebt(_borrower);
        vars.coll = contractsCache.vaultManager.getVaultColl(_borrower);
        
        // Get the vault's old ICR before the adjustment, and what its new ICR will be after the adjustment
        vars.oldICR = LiquidLoansMath._computeCR(vars.coll, vars.debt, vars.price);
        vars.newICR = _getNewICRFromVaultChange(vars.coll, vars.debt, vars.collChange, vars.isCollIncrease, vars.netDebtChange, _isDebtIncrease, vars.price);
        assert(_collWithdrawal <= vars.coll); 

        // Check the adjustment satisfies all conditions for the current system mode
        _requireValidAdjustmentInCurrentMode(isRecoveryMode, _collWithdrawal, _isDebtIncrease, vars);
            
        // When the adjustment is a debt repayment, check it's a valid amount and that the caller has enough USDL
        if (!_isDebtIncrease && _USDLChange > 0) {
            _requireAtLeastMinNetDebt(_getNetDebt(vars.debt).sub(vars.netDebtChange));
            _requireValidUSDLRepayment(vars.debt, vars.netDebtChange);
            _requireSufficientUSDLBalance(contractsCache.usdlToken, _borrower, vars.netDebtChange);
        }

        (vars.newColl, vars.newDebt) = _updateVaultFromAdjustment(contractsCache.vaultManager, _borrower, vars.collChange, vars.isCollIncrease, vars.netDebtChange, _isDebtIncrease);
        vars.stake = contractsCache.vaultManager.updateStakeAndTotalStakes(_borrower);

        // Re-insert vault in to the sorted list
        uint newNICR = _getNewNominalICRFromVaultChange(vars.coll, vars.debt, vars.collChange, vars.isCollIncrease, vars.netDebtChange, _isDebtIncrease);
        sortedVaults.reInsert(_borrower, newNICR, _upperHint, _lowerHint);

        emit VaultUpdated(_borrower, vars.newDebt, vars.newColl, vars.stake, BorrowerOperation.adjustVault);
        emit USDLBorrowingFeePaid(msg.sender,  vars.USDLFee);

        // Use the unmodified _USDLChange here, as we don't send the fee to the user
        _moveTokensAndETHfromAdjustment(
            contractsCache.activePool,
            contractsCache.usdlToken,
            msg.sender,
            vars.collChange,
            vars.isCollIncrease,
            _USDLChange,
            _isDebtIncrease,
            vars.netDebtChange
        );
    }

    function closeVault() external override {
        IVaultManager vaultManagerCached = vaultManager;
        IActivePool activePoolCached = activePool;
        IUSDLToken usdlTokenCached = usdlToken;

        _requireVaultisActive(vaultManagerCached, msg.sender);
        uint price = priceFeed.fetchPrice();
        _requireNotInRecoveryMode(price);

        vaultManagerCached.applyPendingRewards(msg.sender);

        uint coll = vaultManagerCached.getVaultColl(msg.sender);
        uint debt = vaultManagerCached.getVaultDebt(msg.sender);

        _requireSufficientUSDLBalance(usdlTokenCached, msg.sender, debt.sub(USDL_GAS_COMPENSATION));

        uint newTCR = _getNewTCRFromVaultChange(coll, false, debt, false, price);
        _requireNewTCRisAboveCCR(newTCR);

        vaultManagerCached.removeStake(msg.sender);
        vaultManagerCached.closeVault(msg.sender);

        emit VaultUpdated(msg.sender, 0, 0, 0, BorrowerOperation.closeVault);

        // Burn the repaid USDL from the user's balance and the gas compensation from the Gas Pool
        _repayUSDL(activePoolCached, usdlTokenCached, msg.sender, debt.sub(USDL_GAS_COMPENSATION));
        _repayUSDL(activePoolCached, usdlTokenCached, gasPoolAddress, USDL_GAS_COMPENSATION);

        // Send the collateral back to the user
        activePoolCached.sendETH(msg.sender, coll);
    }

    /**
     * Claim remaining collateral from a redemption or from a liquidation with ICR > MCR in Recovery Mode
     */
    function claimCollateral() external override {
        // send ETH from CollSurplus Pool to owner
        collSurplusPool.claimColl(msg.sender);
    }

    // --- Helper functions ---

    function _triggerBorrowingFee(IVaultManager _vaultManager, IUSDLToken _usdlToken, uint _USDLAmount, uint _maxFeePercentage) internal returns (uint) {
        _vaultManager.decayBaseRateFromBorrowing(); // decay the baseRate state variable
        uint USDLFee = _vaultManager.getBorrowingFee(_USDLAmount);

        _requireUserAcceptsFee(USDLFee, _USDLAmount, _maxFeePercentage);
        
        // Send fee to LOAN staking contract
        loanStaking.increaseF_USDL(USDLFee);
        _usdlToken.mint(loanStakingAddress, USDLFee);

        return USDLFee;
    }

    function _getUSDValue(uint _coll, uint _price) internal pure returns (uint) {
        uint usdValue = _price.mul(_coll).div(DECIMAL_PRECISION);

        return usdValue;
    }

    function _getCollChange(
        uint _collReceived,
        uint _requestedCollWithdrawal
    )
        internal
        pure
        returns(uint collChange, bool isCollIncrease)
    {
        if (_collReceived != 0) {
            collChange = _collReceived;
            isCollIncrease = true;
        } else {
            collChange = _requestedCollWithdrawal;
        }
    }

    // Update vault's coll and debt based on whether they increase or decrease
    function _updateVaultFromAdjustment
    (
        IVaultManager _vaultManager,
        address _borrower,
        uint _collChange,
        bool _isCollIncrease,
        uint _debtChange,
        bool _isDebtIncrease
    )
        internal
        returns (uint, uint)
    {
        uint newColl = (_isCollIncrease) ? _vaultManager.increaseVaultColl(_borrower, _collChange)
                                        : _vaultManager.decreaseVaultColl(_borrower, _collChange);
        uint newDebt = (_isDebtIncrease) ? _vaultManager.increaseVaultDebt(_borrower, _debtChange)
                                        : _vaultManager.decreaseVaultDebt(_borrower, _debtChange);

        return (newColl, newDebt);
    }

    function _moveTokensAndETHfromAdjustment
    (
        IActivePool _activePool,
        IUSDLToken _usdlToken,
        address _borrower,
        uint _collChange,
        bool _isCollIncrease,
        uint _USDLChange,
        bool _isDebtIncrease,
        uint _netDebtChange
    )
        internal
    {
        if (_isDebtIncrease) {
            _withdrawUSDL(_activePool, _usdlToken, _borrower, _USDLChange, _netDebtChange);
        } else {
            _repayUSDL(_activePool, _usdlToken, _borrower, _USDLChange);
        }

        if (_isCollIncrease) {
            _activePoolAddColl(_activePool, _collChange);
        } else {
            _activePool.sendETH(_borrower, _collChange);
        }
    }

    // Send ETH to Active Pool and increase its recorded ETH balance
    function _activePoolAddColl(IActivePool _activePool, uint _amount) internal {
        (bool success, ) = address(_activePool).call{value: _amount}("");
        require(success, "BorrowerOps: Sending ETH to ActivePool failed");
    }

    // Issue the specified amount of USDL to _account and increases the total active debt (_netDebtIncrease potentially includes a USDLFee)
    function _withdrawUSDL(IActivePool _activePool, IUSDLToken _usdlToken, address _account, uint _USDLAmount, uint _netDebtIncrease) internal {
        _activePool.increaseUSDLDebt(_netDebtIncrease);
        _usdlToken.mint(_account, _USDLAmount);
    }

    // Burn the specified amount of USDL from _account and decreases the total active debt
    function _repayUSDL(IActivePool _activePool, IUSDLToken _usdlToken, address _account, uint _USDL) internal {
        _activePool.decreaseUSDLDebt(_USDL);
        _usdlToken.burn(_account, _USDL);
    }

    // --- 'Require' wrapper functions ---

    function _requireSingularCollChange(uint _collWithdrawal) internal view {
        require(msg.value == 0 || _collWithdrawal == 0, "BorrowerOperations: Cannot withdraw and add coll");
    }

    function _requireCallerIsBorrower(address _borrower) internal view {
        require(msg.sender == _borrower, "BorrowerOps: Caller must be the borrower for a withdrawal");
    }

    function _requireNonZeroAdjustment(uint _collWithdrawal, uint _USDLChange) internal view {
        require(msg.value != 0 || _collWithdrawal != 0 || _USDLChange != 0, "BorrowerOps: There must be either a collateral change or a debt change");
    }

    function _requireVaultisActive(IVaultManager _vaultManager, address _borrower) internal view {
        uint status = _vaultManager.getVaultStatus(_borrower);
        require(status == 1, "BorrowerOps: Vault does not exist or is closed");
    }

    function _requireVaultisNotActive(IVaultManager _vaultManager, address _borrower) internal view {
        uint status = _vaultManager.getVaultStatus(_borrower);
        require(status != 1, "BorrowerOps: Vault is active");
    }

    function _requireNonZeroDebtChange(uint _USDLChange) internal pure {
        require(_USDLChange > 0, "BorrowerOps: Debt increase requires non-zero debtChange");
    }
   
    function _requireNotInRecoveryMode(uint _price) internal view {
        require(!_checkRecoveryMode(_price), "BorrowerOps: Operation not permitted during Recovery Mode");
    }

    function _requireNoCollWithdrawal(uint _collWithdrawal) internal pure {
        require(_collWithdrawal == 0, "BorrowerOps: Collateral withdrawal not permitted Recovery Mode");
    }

    function _requireValidAdjustmentInCurrentMode 
    (
        bool _isRecoveryMode,
        uint _collWithdrawal,
        bool _isDebtIncrease, 
        LocalVariables_adjustVault memory _vars
    ) 
        internal 
        view 
    {
        /* 
        *In Recovery Mode, only allow:
        *
        * - Pure collateral top-up
        * - Pure debt repayment
        * - Collateral top-up with debt repayment
        * - A debt increase combined with a collateral top-up which makes the ICR >= 150% and improves the ICR (and by extension improves the TCR).
        *
        * In Normal Mode, ensure:
        *
        * - The new ICR is above MCR
        * - The adjustment won't pull the TCR below CCR
        */
        if (_isRecoveryMode) {
            _requireNoCollWithdrawal(_collWithdrawal);
            if (_isDebtIncrease) {
                _requireICRisAboveCCR(_vars.newICR);
                _requireNewICRisAboveOldICR(_vars.newICR, _vars.oldICR);
            }       
        } else { // if Normal Mode
            _requireICRisAboveMCR(_vars.newICR);
            _vars.newTCR = _getNewTCRFromVaultChange(_vars.collChange, _vars.isCollIncrease, _vars.netDebtChange, _isDebtIncrease, _vars.price);
            _requireNewTCRisAboveCCR(_vars.newTCR);  
        }
    }

    function _requireICRisAboveMCR(uint _newICR) internal pure {
        require(_newICR >= MCR, "BorrowerOps: An operation that would result in ICR < MCR is not permitted");
    }

    function _requireICRisAboveCCR(uint _newICR) internal pure {
        require(_newICR >= CCR, "BorrowerOps: Operation must leave vault with ICR >= CCR");
    }

    function _requireNewICRisAboveOldICR(uint _newICR, uint _oldICR) internal pure {
        require(_newICR >= _oldICR, "BorrowerOps: Cannot decrease your Vault's ICR in Recovery Mode");
    }

    function _requireNewTCRisAboveCCR(uint _newTCR) internal pure {
        require(_newTCR >= CCR, "BorrowerOps: An operation that would result in TCR < CCR is not permitted");
    }

    function _requireAtLeastMinNetDebt(uint _netDebt) internal pure {
        require (_netDebt >= MIN_NET_DEBT, "BorrowerOps: Vault's net debt must be greater than minimum");
    }

    function _requireValidUSDLRepayment(uint _currentDebt, uint _debtRepayment) internal pure {
        require(_debtRepayment <= _currentDebt.sub(USDL_GAS_COMPENSATION), "BorrowerOps: Amount repaid must not be larger than the Vault's debt");
    }

    function _requireCallerIsStabilityPool() internal view {
        require(msg.sender == stabilityPoolAddress, "BorrowerOps: Caller is not Stability Pool");
    }

     function _requireSufficientUSDLBalance(IUSDLToken _usdlToken, address _borrower, uint _debtRepayment) internal view {
        require(_usdlToken.balanceOf(_borrower) >= _debtRepayment, "BorrowerOps: Caller doesnt have enough USDL to make repayment");
    }

    function _requireValidMaxFeePercentage(uint _maxFeePercentage, bool _isRecoveryMode) internal pure {
        if (_isRecoveryMode) {
            require(_maxFeePercentage <= DECIMAL_PRECISION,
                "Max fee percentage must less than or equal to 100%");
        } else {
            require(_maxFeePercentage >= BORROWING_FEE_FLOOR && _maxFeePercentage <= DECIMAL_PRECISION,
                "Max fee percentage must be between 0.5% and 100%");
        }
    }

    // --- ICR and TCR getters ---

    // Compute the new collateral ratio, considering the change in coll and debt. Assumes 0 pending rewards.
    function _getNewNominalICRFromVaultChange
    (
        uint _coll,
        uint _debt,
        uint _collChange,
        bool _isCollIncrease,
        uint _debtChange,
        bool _isDebtIncrease
    )
        pure
        internal
        returns (uint)
    {
        (uint newColl, uint newDebt) = _getNewVaultAmounts(_coll, _debt, _collChange, _isCollIncrease, _debtChange, _isDebtIncrease);

        uint newNICR = LiquidLoansMath._computeNominalCR(newColl, newDebt);
        return newNICR;
    }

    // Compute the new collateral ratio, considering the change in coll and debt. Assumes 0 pending rewards.
    function _getNewICRFromVaultChange
    (
        uint _coll,
        uint _debt,
        uint _collChange,
        bool _isCollIncrease,
        uint _debtChange,
        bool _isDebtIncrease,
        uint _price
    )
        pure
        internal
        returns (uint)
    {
        (uint newColl, uint newDebt) = _getNewVaultAmounts(_coll, _debt, _collChange, _isCollIncrease, _debtChange, _isDebtIncrease);

        uint newICR = LiquidLoansMath._computeCR(newColl, newDebt, _price);
        return newICR;
    }

    function _getNewVaultAmounts(
        uint _coll,
        uint _debt,
        uint _collChange,
        bool _isCollIncrease,
        uint _debtChange,
        bool _isDebtIncrease
    )
        internal
        pure
        returns (uint, uint)
    {
        uint newColl = _coll;
        uint newDebt = _debt;

        newColl = _isCollIncrease ? _coll.add(_collChange) :  _coll.sub(_collChange);
        newDebt = _isDebtIncrease ? _debt.add(_debtChange) : _debt.sub(_debtChange);

        return (newColl, newDebt);
    }

    function _getNewTCRFromVaultChange
    (
        uint _collChange,
        bool _isCollIncrease,
        uint _debtChange,
        bool _isDebtIncrease,
        uint _price
    )
        internal
        view
        returns (uint)
    {
        uint totalColl = getEntireSystemColl();
        uint totalDebt = getEntireSystemDebt();

        totalColl = _isCollIncrease ? totalColl.add(_collChange) : totalColl.sub(_collChange);
        totalDebt = _isDebtIncrease ? totalDebt.add(_debtChange) : totalDebt.sub(_debtChange);

        uint newTCR = LiquidLoansMath._computeCR(totalColl, totalDebt, _price);
        return newTCR;
    }

    function getCompositeDebt(uint _debt) external pure override returns (uint) {
        return _getCompositeDebt(_debt);
    }
}
// 2025 Liquid Loans