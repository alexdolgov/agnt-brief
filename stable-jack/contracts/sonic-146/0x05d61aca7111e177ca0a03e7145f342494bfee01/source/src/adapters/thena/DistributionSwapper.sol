// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.24;

import { ERC20 } from "solmate/tokens/ERC20.sol";
import { SafeTransferLib } from "solady/utils/SafeTransferLib.sol";
import { Errors } from "./libraries/Errors.sol";
import { Allowance } from "./libraries/Allowance.sol";
import { ASwapper } from "./abstracts/ASwapper.sol";
import { AFees } from "./abstracts/AFees.sol";
import { ITeller } from "./interfaces/ITeller.sol";
import { IAdapter } from "../../interfaces/IAdapter.sol";
import { ThenaAdapter } from "./ThenaAdapter.sol";
import { FeeM } from "src/FeeM.sol";

/// @author 0xMemoryGrinder
/// @title DistributionSwapper contract
/// @notice Contract that manages swap of rewards and distribution of tokens
contract DistributionSwapper is ASwapper, AFees, FeeM {
    using SafeTransferLib for ERC20;

    /**
     *  @notice Event emitted when the puppeteer adapter is updated
     */
    event PuppeteerAdapterUpdated(address oldPuppeteerAdapter, address newPuppeteerAdapter);
    /**
     *  @notice Event emitted when the rewards distirbutor is updated
     */
    event RewardsDistributorUpdated(address oldRewardsDistributor, address newRewardsDistributor);

    /*//////////////////////////////////////////////////////////////
                            MUTABLE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Address of the puppeteer adapter
     */
    address public puppeteerAdapter;
    /**
     * @notice Address of the rewards distributor
     */
    address public rewardsDistributor;
    /**
     * @notice Address of scUSD
     */
    address public immutable scUSD;
    /**
     * @notice Address of scUSD teller (for mint)
     */
    address public immutable scUSDTeller;
    /**
     * @notice Address of the staker
     */
    address public immutable staker;
    /**
     * @notice Address of the staker teller (for staking)
     */
    address public immutable stakerTeller;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(
        address initialOwner,
        address initialOperator,
        address initialSwapRouter,
        address initialTokenTransferAddress,
        address initialScUSD,
        address initialScUsdTeller,
        address initialStaker,
        address initialStakerTeller,
        uint256 initialHarvestFee,
        uint256 initialCompoundFee,
        address initialFeeRecipient,
        address initialPuppeteerAdapter,
        address initialRewardsDistributor
    ) ASwapper(initialOwner, initialOperator, initialSwapRouter, initialTokenTransferAddress) AFees(initialHarvestFee, initialCompoundFee, initialFeeRecipient) {
        scUSD = initialScUSD;
        scUSDTeller = initialScUsdTeller;
        staker = initialStaker;
        stakerTeller = initialStakerTeller;
        puppeteerAdapter = initialPuppeteerAdapter;
        rewardsDistributor = initialRewardsDistributor;

        registerMe();
    }

    /*//////////////////////////////////////////////////////////////
                            ADMIN LOGIC
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Set the puppeteer adapter address
     * @param newPuppeteerAdapter address of the puppeteer adapter
     * @custom:requires owner
     */
    function setPuppeteerAdapter(address newPuppeteerAdapter) external onlyOwner {
        address oldPuppeteerAdapter = puppeteerAdapter;
        puppeteerAdapter = newPuppeteerAdapter;

        emit PuppeteerAdapterUpdated(oldPuppeteerAdapter, newPuppeteerAdapter);
    }

    /**
     * @notice Set the rewards distributor address
     * @param newRewardsDistributor address of the rewards distributor
     * @custom:requires owner
     */
    function setRewardsDistributor(address newRewardsDistributor) external onlyOwner {
        address oldRewardsDistributor = rewardsDistributor;
        rewardsDistributor = newRewardsDistributor;

        emit RewardsDistributorUpdated(oldRewardsDistributor, newRewardsDistributor);
    }

    /*//////////////////////////////////////////////////////////////
                            DISTRIBUTION LOGIC
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Mint and stake tokens
     * @param tokensToMintWith Addresses of the tokens to mint scUSD with
     * @param amounts Amounts of tokens used to mint
     * @param stake Booleans to determine if the minted tokens should be staked
     */
    function mintAndStake(address[] calldata tokensToMintWith, uint256[] calldata amounts, bool[] calldata stake)
        external
        onlyOperatorOrOwner
    {
        uint256 length = tokensToMintWith.length;
        for (uint256 i = 0; i < length; ++i) {
            _mintAndStake(tokensToMintWith[i], amounts[i], stake[i]);
        }
    }

    /**
     * @notice Mint adapted tokens, sends a part to the rewards distributor and keep the rest in the contract for future
     * compound
     * @param distributionToken Address of the token to send to the distributor
     * @param distributorAmount Amount of tokens to send to the rewards distributor
     */
    function distributeRewards(address distributionToken, uint256 distributorAmount)
        public
        onlyOperatorOrOwner
    {
        uint256 feeAmount = distributorAmount * fees[FeeType.Reward] / MAX_BPS;

        if (feeAmount > 0) {
            SafeTransferLib.safeTransfer(distributionToken, feeRecipient, feeAmount);
        }

        SafeTransferLib.safeTransfer(distributionToken, rewardsDistributor, distributorAmount - feeAmount);
    }

    /**
     * @notice Compound rewards for a list of veNFTs
     * @param veNFTs List of veNFTs to compound rewards for
     * @param amounts List of amounts to compound for each veNFT
     */
    function compoundRewards(uint256[] calldata veNFTs, uint256[] memory amounts) public onlyOperatorOrOwner {
        uint256 compoundFee = fees[FeeType.Compound];
        uint256 feeAmount = 0;
        uint256 length = veNFTs.length;

        for (uint256 i = 0; i < length; ++i) {
            feeAmount += amounts[i] * compoundFee / MAX_BPS;
            amounts[i] -= amounts[i] * compoundFee / MAX_BPS;
        }

        if (feeAmount > 0) {
            SafeTransferLib.safeTransfer(staker, feeRecipient, feeAmount);
        }

        Allowance._approveTokenIfNeeded(staker, puppeteerAdapter);
        IAdapter(puppeteerAdapter).increaseMany(veNFTs, amounts, address(this), true);
    }

    /**
     * @notice Distribute rewards and compound them for a list of veNFTs
     * @param distributionToken Address of the token to send to the distributor
     * @param distributorAmount Amount of tokens to send to the rewards distributor
     * @param veNFTs List of veNFTs to compound rewards for
     * @param amounts List of amounts to compound for each veNFT
     */
    function distributeAndCompound(address distributionToken, uint256 distributorAmount, uint256[] calldata veNFTs, uint256[] calldata amounts) external onlyOperatorOrOwner {
        distributeRewards(distributionToken, distributorAmount);
        compoundRewards(veNFTs, amounts);
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Mint and (if needed) stake tokens
     * @param token Address of the token to mint with
     * @param amount Amount of tokens used to mint
     * @param stake Boolean to determine if the minted tokens should be staked
     */
    function _mintAndStake(address token, uint256 amount, bool stake) internal returns (uint256 shares_) {
        uint256 scUSDBalance = amount;

        if (token != scUSD) {
            Allowance._approveTokenIfNeeded(token, scUSD);
            scUSDBalance = ITeller(scUSDTeller).deposit(ERC20(token), amount, 0);
        }

        if (stake) {
            Allowance._approveTokenIfNeeded(scUSD, staker);
            return ITeller(stakerTeller).deposit(ERC20(scUSD), scUSDBalance, 0);
        }
        return scUSDBalance;
    }
}
