// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "../interfaces/IInsurancePool.sol";
import "../interfaces/IStakingConfig.sol";
import "../libs/Utils.sol";

// @dev Manage insurance pools of providers
contract InsurancePool_R1 is IInsurancePool, OwnableUpgradeable {

    using MathUpgradeable for uint256;

    // global staking config
    IStakingConfig internal _config;
    // minimal amount to avoid dust
    uint64 public minContribAmount;

    // map of users contributions to pools, contributor -> provider
    mapping(address => mapping(address => uint128)) internal _totalContributed;
    // map of provider's insurance pools
    mapping(address => Insurance) internal _insurances;

    struct Insurance {
        uint128 sharesSupply;
        uint128 contribution;
    }

    modifier onlyNative() {
        require(_config.isNative(), "InsurancePool: native not allowed");
        _;
    }

    modifier onlyERC20() {
        require(!_config.isNative(), "InsurancePool: erc20 not allowed");
        _;
    }

    function initialize(IStakingConfig config) public initializer {
        __Ownable_init();
        minContribAmount = 1e13;
        _config = config;
    }

    // contribute mGNO to insurance pool
    function contributeGNO(address provider, uint128 amount) external override onlyERC20 {
        require(_config.getStakeToken().transferFrom(msg.sender, address(this), amount), "InsurancePool: cannot transfer tokens");
        _contribute(provider, amount, msg.sender);
    }

    // contribute ETH to insurance pool
    function contribute(address provider) external override payable onlyNative {
        _contribute(provider, uint128(msg.value), msg.sender);
    }

    function _contribute(address provider, uint128 amount, address contributor) internal {
        require(amount >= minContribAmount, "InsurancePool: value must be greater than minimum contribution amount");
        require(amount % minContribAmount == 0, "InsurancePool: value must be multiple of minimum contribution amount");

        (uint16 commission,,,bool registered) = _config.getProviderRegistry().getProvider(provider);
        require(registered, "InsurancePool: provider not registered");

        Insurance storage insurance = _insurances[provider];

        uint256 rate = _calcInsuranceRate(insurance, _config.getValidatorManager().getPendingReward(provider), commission);
        uint256 shares = uint256(amount).mulDiv(rate, 1e18, MathUpgradeable.Rounding.Up);

        insurance.contribution += amount;
        insurance.sharesSupply += uint128(shares);

        emit ContributionConfirmed(contributor, provider, amount, shares, insurance.contribution);
    }

    // @return provider insurance rate
    function getInsuranceRate(address provider) public override view returns (uint256) {
        Insurance storage insurance = _insurances[provider];
        (uint16 commission,,,) = _config.getProviderRegistry().getProvider(provider);
        return _calcInsuranceRate(insurance, _config.getValidatorManager().getPendingReward(provider), commission);
    }

    // @return contributed amount to provider by contributor
    function getContributed(address provider, address contributor) external override view returns (uint128) {
        return _totalContributed[contributor][provider];
    }

    // @return total contributed to provider
    function getTotalContributed(address provider) external override view returns (uint128) {
        return _insurances[provider].contribution;
    }

    // @param providers array of providers
    // @return array of provider's total contributions
    function getTotalContributions(address[] calldata providers) external override view returns (uint128[] memory) {
        uint128[] memory contributions = new uint128[](providers.length);

        for (uint256 i = 0; i < providers.length; i++) {
            contributions[i] = _insurances[providers[i]].contribution;
        }

        return contributions;
    }

    // calculating current insurance rate to use in shares calculation
    function _calcInsuranceRate(Insurance memory insurance, uint256 totalRewards, uint16 commission) internal pure returns (uint256) {
        uint256 contribution = uint256(insurance.contribution);
        if (contribution == 0) {
            return 1e18;
        }
        return (uint256(insurance.sharesSupply) * 1e18).ceilDiv(insurance.contribution + Utils.calcCommission18(totalRewards, commission));
    }
}
