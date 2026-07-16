// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "../abstract/Ownable.sol";
import {IDUSXProvider} from "../interface/IDUSXProvider.sol";
import {IDynamicInterestRate} from "../interface/IDynamicInterestRate.sol";
import {IERC20Token} from "../interface/IERC20Token.sol";
import {IERC20TokenRebase} from "../interface/IERC20TokenRebase.sol";
import {IFeesDistributor} from "../interface/IFees.sol";
import {IFeesWithdrawer} from "../interface/IFees.sol";
import {IFloor} from "../interface/IFloor.sol";
import {ILenderOwner} from "../interface/ILenderOwner.sol";
import {ILiquidationHelper} from "../interface/ILiquidationHelper.sol";
import {IMarketLens} from "../interface/IMarketLens.sol";
import {IMinter} from "../interface/IMinter.sol";
import {IMiscHelper} from "../interface/IMiscHelper.sol";
import {IOracle} from "../interface/IOracle.sol";
import {IPSM} from "../interface/IPSM.sol";
import {IRepayHelper} from "../interface/IRepayHelper.sol";
import {IStableOwner} from "../interface/IStableOwner.sol";
import {IStakedDUSX} from "../interface/IStakedDUSX.sol";
import {ISupplyHangingCalculator} from "../interface/ISupplyHangingCalculator.sol";
import {IVault} from "../interface/IVault.sol";
import {IVoteEscrowedSTTX} from "../interface/IVoteEscrowedSTTX.sol";

contract BaseContracts is Ownable {
    // Group core tokens
    struct CoreTokens {
        IERC20Token dusx;
        IERC20TokenRebase sttx;
        IStakedDUSX stDUSX;
        IVoteEscrowedSTTX veSTTX;
    }
    // Group PSM related contracts
    struct PSMContracts {
        IPSM psmCircle;
        IPSM psmTether;
        IStableOwner stableOwner;
    }
    // Group oracle contracts
    struct OracleContracts {
        IOracle oracleChainlink;
        IOracle oracleFloorPrice;
    }
    // Group helper contracts
    struct HelperContracts {
        IMiscHelper helper;
        ILiquidationHelper liquidationHelper;
        IRepayHelper repayHelper;
        IMarketLens marketLens;
    }
    CoreTokens private _coreTokens;
    PSMContracts private _psmContracts;
    OracleContracts private _oracleContracts;
    HelperContracts private _helperContracts;
    IDUSXProvider private _dusxProvider;
    IFeesDistributor private _feesDistributor;
    IFeesWithdrawer private _feesWithdrawer;
    IFloor private _floor;
    ILenderOwner private _lenderOwner;
    IMinter private _minter;
    ISupplyHangingCalculator private _supplyCalculator;
    IVault private _vault;
    IDynamicInterestRate private _dynamicInterestRate;
    error ZeroAddress();
    error ContractAlreadySet();

    function setDUSX(IERC20Token dusx_) external onlyOwner {
        _checkZeroAddress(address(dusx_));
        _checkContractNotSet(address(_coreTokens.dusx));
        _coreTokens.dusx = dusx_;
    }

    function setDUSXProvider(IDUSXProvider provider_) external onlyOwner {
        _checkZeroAddress(address(provider_));
        _checkContractNotSet(address(_dusxProvider));
        _dusxProvider = provider_;
    }

    function setDynamicInterestRate(
        IDynamicInterestRate dynamicInterestRate_
    ) external onlyOwner {
        _checkZeroAddress(address(dynamicInterestRate_));
        _checkContractNotSet(address(_dynamicInterestRate));
        _dynamicInterestRate = dynamicInterestRate_;
    }

    function setFeesDistributor(
        IFeesDistributor distributor_
    ) external onlyOwner {
        _checkZeroAddress(address(distributor_));
        _checkContractNotSet(address(_feesDistributor));
        _feesDistributor = distributor_;
    }

    function setFeesWithdrawer(IFeesWithdrawer withdrawer_) external onlyOwner {
        _checkZeroAddress(address(withdrawer_));
        _checkContractNotSet(address(_feesWithdrawer));
        _feesWithdrawer = withdrawer_;
    }

    function setFloor(IFloor floor_) external onlyOwner {
        _checkZeroAddress(address(floor_));
        _checkContractNotSet(address(_floor));
        _floor = floor_;
    }

    function setHelper(IMiscHelper helper_) external onlyOwner {
        _checkZeroAddress(address(helper_));
        _checkContractNotSet(address(_helperContracts.helper));
        _helperContracts.helper = helper_;
    }

    function setLenderOwner(ILenderOwner owner_) external onlyOwner {
        _checkZeroAddress(address(owner_));
        _checkContractNotSet(address(_lenderOwner));
        _lenderOwner = owner_;
    }

    function setLiquidationHelper(
        ILiquidationHelper helper_
    ) external onlyOwner {
        _checkZeroAddress(address(helper_));
        _checkContractNotSet(address(_helperContracts.liquidationHelper));
        _helperContracts.liquidationHelper = helper_;
    }

    function setMarketLens(IMarketLens lens_) external onlyOwner {
        _checkZeroAddress(address(lens_));
        _checkContractNotSet(address(_helperContracts.marketLens));
        _helperContracts.marketLens = lens_;
    }

    function setMinter(IMinter minter_) external onlyOwner {
        _checkZeroAddress(address(minter_));
        _checkContractNotSet(address(_minter));
        _minter = minter_;
    }

    function setOracleChainlink(IOracle oracle_) external onlyOwner {
        _checkZeroAddress(address(oracle_));
        _checkContractNotSet(address(_oracleContracts.oracleChainlink));
        _oracleContracts.oracleChainlink = oracle_;
    }

    function setOracleFloorPrice(IOracle oracle_) external onlyOwner {
        _checkZeroAddress(address(oracle_));
        _checkContractNotSet(address(_oracleContracts.oracleFloorPrice));
        _oracleContracts.oracleFloorPrice = oracle_;
    }

    function setPSMCircle(IPSM psm_) external onlyOwner {
        _checkZeroAddress(address(psm_));
        _checkContractNotSet(address(_psmContracts.psmCircle));
        _psmContracts.psmCircle = psm_;
    }

    function setPSMTether(IPSM psm_) external onlyOwner {
        _checkZeroAddress(address(psm_));
        _checkContractNotSet(address(_psmContracts.psmTether));
        _psmContracts.psmTether = psm_;
    }

    function setRepayHelper(IRepayHelper helper_) external onlyOwner {
        _checkZeroAddress(address(helper_));
        _checkContractNotSet(address(_helperContracts.repayHelper));
        _helperContracts.repayHelper = helper_;
    }

    function setStakedDUSX(IStakedDUSX stDUSX_) external onlyOwner {
        _checkZeroAddress(address(stDUSX_));
        _checkContractNotSet(address(_coreTokens.stDUSX));
        _coreTokens.stDUSX = stDUSX_;
    }

    function setStableOwner(IStableOwner owner_) external onlyOwner {
        _checkZeroAddress(address(owner_));
        _checkContractNotSet(address(_psmContracts.stableOwner));
        _psmContracts.stableOwner = owner_;
    }

    function setSTTX(IERC20TokenRebase sttx_) external onlyOwner {
        _checkZeroAddress(address(sttx_));
        _checkContractNotSet(address(_coreTokens.sttx));
        _coreTokens.sttx = sttx_;
    }

    function setSupplyCalculator(
        ISupplyHangingCalculator calculator_
    ) external onlyOwner {
        _checkZeroAddress(address(calculator_));
        _checkContractNotSet(address(_supplyCalculator));
        _supplyCalculator = calculator_;
    }

    function setVault(IVault vault_) external onlyOwner {
        _checkZeroAddress(address(vault_));
        _checkContractNotSet(address(_vault));
        _vault = vault_;
    }

    function setVoteEscrowedSTTX(IVoteEscrowedSTTX veSTTX_) external onlyOwner {
        _checkZeroAddress(address(veSTTX_));
        _checkContractNotSet(address(_coreTokens.veSTTX));
        _coreTokens.veSTTX = veSTTX_;
    }

    // Convenience getters for struct members
    function dusx() external view returns (IERC20Token) {
        return _coreTokens.dusx;
    }

    function sttx() external view returns (IERC20TokenRebase) {
        return _coreTokens.sttx;
    }

    function stDUSX() external view returns (IStakedDUSX) {
        return _coreTokens.stDUSX;
    }

    function veSTTX() external view returns (IVoteEscrowedSTTX) {
        return _coreTokens.veSTTX;
    }

    function psmCircle() external view returns (IPSM) {
        return _psmContracts.psmCircle;
    }

    function psmTether() external view returns (IPSM) {
        return _psmContracts.psmTether;
    }

    function stableOwner() external view returns (IStableOwner) {
        return _psmContracts.stableOwner;
    }

    function oracleChainlink() external view returns (IOracle) {
        return _oracleContracts.oracleChainlink;
    }

    function oracleFloorPrice() external view returns (IOracle) {
        return _oracleContracts.oracleFloorPrice;
    }

    function helper() external view returns (IMiscHelper) {
        return _helperContracts.helper;
    }

    function liquidationHelper() external view returns (ILiquidationHelper) {
        return _helperContracts.liquidationHelper;
    }

    function repayHelper() external view returns (IRepayHelper) {
        return _helperContracts.repayHelper;
    }

    function marketLens() external view returns (IMarketLens) {
        return _helperContracts.marketLens;
    }

    function dusxProvider() external view returns (IDUSXProvider) {
        return _dusxProvider;
    }

    function feesDistributor() external view returns (IFeesDistributor) {
        return _feesDistributor;
    }

    function feesWithdrawer() external view returns (IFeesWithdrawer) {
        return _feesWithdrawer;
    }

    function floor() external view returns (IFloor) {
        return _floor;
    }

    function lenderOwner() external view returns (ILenderOwner) {
        return _lenderOwner;
    }

    function minter() external view returns (IMinter) {
        return _minter;
    }

    function supplyCalculator()
        external
        view
        returns (ISupplyHangingCalculator)
    {
        return _supplyCalculator;
    }

    function vault() external view returns (IVault) {
        return _vault;
    }

    function dynamicInterestRate()
        external
        view
        returns (IDynamicInterestRate)
    {
        return _dynamicInterestRate;
    }

    function _checkZeroAddress(address addr) private pure {
        if (addr == address(0)) revert ZeroAddress();
    }

    function _checkContractNotSet(address addr) private pure {
        if (addr != address(0)) revert ContractAlreadySet();
    }
}
