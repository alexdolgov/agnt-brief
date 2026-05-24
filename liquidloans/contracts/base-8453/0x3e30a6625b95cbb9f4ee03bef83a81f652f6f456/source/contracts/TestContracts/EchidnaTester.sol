// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../VaultManager.sol";
import "../BorrowerOperations.sol";
import "../ActivePool.sol";
import "../DefaultPool.sol";
import "../StabilityPool.sol";
import "../GasPool.sol";
import "../CollSurplusPool.sol";
import "../USDLToken.sol";
import "./PriceFeedTestnet.sol";
import "../SortedVaults.sol";
import "./EchidnaProxy.sol";
//import "../Dependencies/console.sol";

// Run with:
// rm -f fuzzTests/corpus/* # (optional)
// ~/.local/bin/echidna-test contracts/TestContracts/EchidnaTester.sol --contract EchidnaTester --config fuzzTests/echidna_config.yaml

contract EchidnaTester {
    using SafeMath for uint;

    uint constant private NUMBER_OF_ACTORS = 100;
    uint constant private INITIAL_BALANCE = 1e24;
    uint private MCR;
    uint private CCR;
    uint private USDL_GAS_COMPENSATION;

    VaultManager public vaultManager;
    BorrowerOperations public borrowerOperations;
    ActivePool public activePool;
    DefaultPool public defaultPool;
    StabilityPool public stabilityPool;
    GasPool public gasPool;
    CollSurplusPool public collSurplusPool;
    USDLToken public usdlToken;
    PriceFeedTestnet priceFeedTestnet;
    SortedVaults sortedVaults;

    EchidnaProxy[NUMBER_OF_ACTORS] public echidnaProxies;

    uint private numberOfVaults;

    constructor() public payable {
        vaultManager = new VaultManager();
        borrowerOperations = new BorrowerOperations();
        activePool = new ActivePool();
        defaultPool = new DefaultPool();
        stabilityPool = new StabilityPool();
        gasPool = new GasPool();
        usdlToken = new USDLToken(
            address(vaultManager),
            address(stabilityPool),
            address(borrowerOperations)
        );

        collSurplusPool = new CollSurplusPool();
        priceFeedTestnet = new PriceFeedTestnet(bytes32(0));

        sortedVaults = new SortedVaults();

        vaultManager.setAddresses(address(borrowerOperations), 
            address(activePool), address(defaultPool), 
            address(stabilityPool), address(gasPool), address(collSurplusPool),
            address(priceFeedTestnet), address(usdlToken), 
            address(sortedVaults), address(0), address(0));
       
        borrowerOperations.setAddresses(address(vaultManager), 
            address(activePool), address(defaultPool), 
            address(stabilityPool), address(gasPool), address(collSurplusPool),
            address(priceFeedTestnet), address(sortedVaults), 
            address(usdlToken), address(0));

        activePool.setAddresses(address(borrowerOperations), 
            address(vaultManager), address(stabilityPool), address(defaultPool));

        defaultPool.setAddresses(address(vaultManager), address(activePool));
        
        stabilityPool.setAddresses(address(borrowerOperations), 
            address(vaultManager), address(activePool), address(usdlToken), 
            address(sortedVaults), address(priceFeedTestnet), address(0));

        collSurplusPool.setAddresses(address(borrowerOperations), 
             address(vaultManager), address(activePool));
    
        sortedVaults.setParams(1e18, address(vaultManager), address(borrowerOperations));

        for (uint i = 0; i < NUMBER_OF_ACTORS; i++) {
            echidnaProxies[i] = new EchidnaProxy(vaultManager, borrowerOperations, stabilityPool, usdlToken);
            (bool success, ) = address(echidnaProxies[i]).call{value: INITIAL_BALANCE}("");
            require(success);
        }

        MCR = borrowerOperations.MCR();
        CCR = borrowerOperations.CCR();
        USDL_GAS_COMPENSATION = borrowerOperations.USDL_GAS_COMPENSATION();
        require(MCR > 0);
        require(CCR > 0);

        // TODO:
        priceFeedTestnet.setPriceETH(1e22);
    }

    // VaultManager

    function liquidateExt(uint _i, address _user) external {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].liquidatePrx(_user);
    }

    function liquidateVaultsExt(uint _i, uint _n) external {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].liquidateVaultsPrx(_n);
    }

    function batchLiquidateVaultsExt(uint _i, address[] calldata _vaultArray) external {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].batchLiquidateVaultsPrx(_vaultArray);
    }

    function redeemCollateralExt(
        uint _i,
        uint _USDLAmount,
        address _firstRedemptionHint,
        address _upperPartialRedemptionHint,
        address _lowerPartialRedemptionHint,
        uint _partialRedemptionHintNICR
    ) external {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].redeemCollateralPrx(_USDLAmount, _firstRedemptionHint, _upperPartialRedemptionHint, _lowerPartialRedemptionHint, _partialRedemptionHintNICR, 0, 0);
    }

    // Borrower Operations

    function getAdjustedETH(uint actorBalance, uint _ETH, uint ratio) internal view returns (uint) {
        uint price = priceFeedTestnet.getPrice();
        require(price > 0);
        uint minETH = ratio.mul(USDL_GAS_COMPENSATION).div(price);
        require(actorBalance > minETH);
        uint ETH = minETH + _ETH % (actorBalance - minETH);
        return ETH;
    }

    function getAdjustedUSDL(uint ETH, uint _USDLAmount, uint ratio) internal view returns (uint) {
        uint price = priceFeedTestnet.getPrice();
        uint USDLAmount = _USDLAmount;
        uint compositeDebt = USDLAmount.add(USDL_GAS_COMPENSATION);
        uint ICR = LiquidLoansMath._computeCR(ETH, compositeDebt, price);
        if (ICR < ratio) {
            compositeDebt = ETH.mul(price).div(ratio);
            USDLAmount = compositeDebt.sub(USDL_GAS_COMPENSATION);
        }
        return USDLAmount;
    }

    function openVaultExt(uint _i, uint _ETH, uint _USDLAmount) public payable {
        uint actor = _i % NUMBER_OF_ACTORS;
        EchidnaProxy echidnaProxy = echidnaProxies[actor];
        uint actorBalance = address(echidnaProxy).balance;

        // we pass in CCR instead of MCR in case it’s the first one
        uint ETH = getAdjustedETH(actorBalance, _ETH, CCR);
        uint USDLAmount = getAdjustedUSDL(ETH, _USDLAmount, CCR);

        //console.log('ETH', ETH);
        //console.log('USDLAmount', USDLAmount);

        echidnaProxy.openVaultPrx(ETH, USDLAmount, address(0), address(0), 0);

        numberOfVaults = vaultManager.getVaultOwnersCount();
        assert(numberOfVaults > 0);
        // canary
        //assert(numberOfVaults == 0);
    }

    function openVaultRawExt(uint _i, uint _ETH, uint _USDLAmount, address _upperHint, address _lowerHint, uint _maxFee) public payable {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].openVaultPrx(_ETH, _USDLAmount, _upperHint, _lowerHint, _maxFee);
    }

    function addCollExt(uint _i, uint _ETH) external payable {
        uint actor = _i % NUMBER_OF_ACTORS;
        EchidnaProxy echidnaProxy = echidnaProxies[actor];
        uint actorBalance = address(echidnaProxy).balance;

        uint ETH = getAdjustedETH(actorBalance, _ETH, MCR);

        echidnaProxy.addCollPrx(ETH, address(0), address(0));
    }

    function addCollRawExt(uint _i, uint _ETH, address _upperHint, address _lowerHint) external payable {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].addCollPrx(_ETH, _upperHint, _lowerHint);
    }

    function withdrawCollExt(uint _i, uint _amount, address _upperHint, address _lowerHint) external {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].withdrawCollPrx(_amount, _upperHint, _lowerHint);
    }

    function withdrawUSDLExt(uint _i, uint _amount, address _upperHint, address _lowerHint, uint _maxFee) external {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].withdrawUSDLPrx(_amount, _upperHint, _lowerHint, _maxFee);
    }

    function repayUSDLExt(uint _i, uint _amount, address _upperHint, address _lowerHint) external {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].repayUSDLPrx(_amount, _upperHint, _lowerHint);
    }

    function closeVaultExt(uint _i) external {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].closeVaultPrx();
    }

    function adjustVaultExt(uint _i, uint _ETH, uint _collWithdrawal, uint _debtChange, bool _isDebtIncrease) external payable {
        uint actor = _i % NUMBER_OF_ACTORS;
        EchidnaProxy echidnaProxy = echidnaProxies[actor];
        uint actorBalance = address(echidnaProxy).balance;

        uint ETH = getAdjustedETH(actorBalance, _ETH, MCR);
        uint debtChange = _debtChange;
        if (_isDebtIncrease) {
            // TODO: add current amount already withdrawn:
            debtChange = getAdjustedUSDL(ETH, uint(_debtChange), MCR);
        }
        // TODO: collWithdrawal, debtChange
        echidnaProxy.adjustVaultPrx(ETH, _collWithdrawal, debtChange, _isDebtIncrease, address(0), address(0), 0);
    }

    function adjustVaultRawExt(uint _i, uint _ETH, uint _collWithdrawal, uint _debtChange, bool _isDebtIncrease, address _upperHint, address _lowerHint, uint _maxFee) external payable {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].adjustVaultPrx(_ETH, _collWithdrawal, _debtChange, _isDebtIncrease, _upperHint, _lowerHint, _maxFee);
    }

    // Pool Manager

    function provideToSPExt(uint _i, uint _amount, address _frontEndTag) external {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].provideToSPPrx(_amount, _frontEndTag);
    }

    function withdrawFromSPExt(uint _i, uint _amount) external {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].withdrawFromSPPrx(_amount);
    }

    // USDL Token

    function transferExt(uint _i, address recipient, uint256 amount) external returns (bool) {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].transferPrx(recipient, amount);
    }

    function approveExt(uint _i, address spender, uint256 amount) external returns (bool) {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].approvePrx(spender, amount);
    }

    function transferFromExt(uint _i, address sender, address recipient, uint256 amount) external returns (bool) {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].transferFromPrx(sender, recipient, amount);
    }

    function increaseAllowanceExt(uint _i, address spender, uint256 addedValue) external returns (bool) {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].increaseAllowancePrx(spender, addedValue);
    }

    function decreaseAllowanceExt(uint _i, address spender, uint256 subtractedValue) external returns (bool) {
        uint actor = _i % NUMBER_OF_ACTORS;
        echidnaProxies[actor].decreaseAllowancePrx(spender, subtractedValue);
    }

    // PriceFeed

    function setPriceExt(uint256 _price) external {
        bool result = priceFeedTestnet.setPriceETH(_price);
        assert(result);
    }

    // --------------------------
    // Invariants and properties
    // --------------------------

    function echidna_canary_number_of_vaults() public view returns(bool) {
        if (numberOfVaults > 20) {
            return false;
        }

        return true;
    }

    function echidna_canary_active_pool_balance() public view returns(bool) {
        if (address(activePool).balance > 0) {
            return false;
        }
        return true;
    }

    function echidna_vaults_order() external view returns(bool) {
        address currentVault = sortedVaults.getFirst();
        address nextVault = sortedVaults.getNext(currentVault);

        while (currentVault != address(0) && nextVault != address(0)) {
            if (vaultManager.getNominalICR(nextVault) > vaultManager.getNominalICR(currentVault)) {
                return false;
            }
            // Uncomment to check that the condition is meaningful
            //else return false;

            currentVault = nextVault;
            nextVault = sortedVaults.getNext(currentVault);
        }

        return true;
    }

    /**
     * Status
     * Minimum debt (gas compensation)
     * Stake > 0
     */
    function echidna_vault_properties() public view returns(bool) {
        address currentVault = sortedVaults.getFirst();
        while (currentVault != address(0)) {
            // Status
            if (VaultManager.Status(vaultManager.getVaultStatus(currentVault)) != VaultManager.Status.active) {
                return false;
            }
            // Uncomment to check that the condition is meaningful
            //else return false;

            // Minimum debt (gas compensation)
            if (vaultManager.getVaultDebt(currentVault) < USDL_GAS_COMPENSATION) {
                return false;
            }
            // Uncomment to check that the condition is meaningful
            //else return false;

            // Stake > 0
            if (vaultManager.getVaultStake(currentVault) == 0) {
                return false;
            }
            // Uncomment to check that the condition is meaningful
            //else return false;

            currentVault = sortedVaults.getNext(currentVault);
        }
        return true;
    }

    function echidna_ETH_balances() public view returns(bool) {
        if (address(vaultManager).balance > 0) {
            return false;
        }

        if (address(borrowerOperations).balance > 0) {
            return false;
        }

        if (address(activePool).balance != activePool.getETH()) {
            return false;
        }

        if (address(defaultPool).balance != defaultPool.getETH()) {
            return false;
        }

        if (address(stabilityPool).balance != stabilityPool.getETH()) {
            return false;
        }

        if (address(usdlToken).balance > 0) {
            return false;
        }
    
        if (address(priceFeedTestnet).balance > 0) {
            return false;
        }
        
        if (address(sortedVaults).balance > 0) {
            return false;
        }

        return true;
    }

    // TODO: What should we do with this? Should it be allowed? Should it be a canary?
    function echidna_price() public view returns(bool) {
        uint price = priceFeedTestnet.getPrice();
        
        if (price == 0) {
            return false;
        }
        // Uncomment to check that the condition is meaningful
        //else return false;

        return true;
    }

    // Total USDL matches
    function echidna_USDL_global_balances() public view returns(bool) {
        uint totalSupply = usdlToken.totalSupply();
        uint gasPoolBalance = usdlToken.balanceOf(address(gasPool));

        uint activePoolBalance = activePool.getUSDLDebt();
        uint defaultPoolBalance = defaultPool.getUSDLDebt();
        if (totalSupply != activePoolBalance + defaultPoolBalance) {
            return false;
        }

        uint stabilityPoolBalance = stabilityPool.getTotalUSDLDeposits();
        address currentVault = sortedVaults.getFirst();
        uint vaultsBalance;
        while (currentVault != address(0)) {
            vaultsBalance += usdlToken.balanceOf(address(currentVault));
            currentVault = sortedVaults.getNext(currentVault);
        }
        // we cannot state equality because tranfers are made to external addresses too
        if (totalSupply <= stabilityPoolBalance + vaultsBalance + gasPoolBalance) {
            return false;
        }

        return true;
    }

    /*
    function echidna_test() public view returns(bool) {
        return true;
    }
    */
}
// 2025 Liquid Loans