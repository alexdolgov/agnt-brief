// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../../../interfaces/IBondToken.sol";

import "../../../interfaces/IBCToken.sol";
import "../../../interfaces/IFiraWrappedStandardized.sol";

import "../../../interfaces/IBCContractFactory.sol";
import "../../StandardizedYield/FWUtils.sol";

import "../../erc20/FiraERC20.sol";
import "../../libraries/ArrayLib.sol";
import "../../libraries/Errors.sol";
import "../../libraries/MiniHelpers.sol";
import "../../libraries/math/PMath.sol";
import "./InterestManagerCT.sol";

/// @title CouponToken
/// @notice Coupon Token (CT) represents variable interest payments from yield-bearing assets
/// @dev CouponToken is paired with BondToken (BT) to split FW into fixed and variable yield components.
///      Together, 1 BT + 1 CT can be redeemed for FW at the BC index rate.
///
///      Key invariants:
///      - address(0) & address(this) should never have any rewards & activeBalance accounting done
///      - This is guaranteed by address(0) & address(this) check in each updateForTwo function
contract CouponToken is IBCToken, FiraERC20, InterestManagerCT {
    using PMath for uint256;
    using SafeERC20 for IERC20;
    using ArrayLib for uint256[];

    struct PostExpiryData {
        uint128 firstBCIndex;
        uint128 totalFwInterestForTreasury;
        mapping(address => uint256) firstRewardIndex;
        mapping(address => uint256) userRewardOwed;
    }

    address public immutable FW;
    address public immutable BT;
    address public immutable factory;
    uint256 public immutable expiry;

    bool public immutable doCacheIndexSameBlock;

    uint256 public fwReserve;

    uint128 public bcIndexLastUpdatedBlock;
    uint128 internal _bcIndexStored;

    PostExpiryData public postExpiry;

    event PostExpiryDataSet(uint256 firstBCIndex);
    event TreasuryFwInterestAccrued(uint256 amountAccrued, uint256 newTotalAccrued);

    modifier updateData() {
        if (isExpired()) _setPostExpiryData();
        _;
        _updateFwReserve();
    }

    modifier notExpired() {
        if (isExpired()) revert Errors.YCExpired();
        _;
    }

    /**
     * @param _FW the Fira Wrapped token address
     * @param _BT the Bond Token address
     * @param _name the name of the Coupon Token
     * @param _symbol the symbol of the Coupon Token
     * @param __decimals the decimals of the Coupon Token
     * @param _expiry the expiry timestamp of the Coupon Token
     * @param _doCacheIndexSameBlock if true, the BC index is cached for each block, and thus is
     * constant for all txs within the same block. Otherwise, the BC index is recalculated for
     * every tx.
     */
    constructor(
        address _FW,
        address _BT,
        string memory _name,
        string memory _symbol,
        uint8 __decimals,
        uint256 _expiry,
        bool _doCacheIndexSameBlock
    ) FiraERC20(_name, _symbol, __decimals) {
        FW = _FW;
        BT = _BT;
        expiry = _expiry;
        factory = msg.sender;
        doCacheIndexSameBlock = _doCacheIndexSameBlock;
    }

    /**
     * @notice Tokenize FW into BT + CT of equal qty. Every unit of asset of FW will create 1 BT + 1
     * CT
     * @dev FW must be transferred to this contract prior to calling
     * @param receiverBT the address to receive the minted Bond Tokens
     * @param receiverCT the address to receive the minted Coupon Tokens
     * @return amountBCOut the amount of BT and CT minted
     */
    function mintBC(address receiverBT, address receiverCT)
        external
        nonReentrant
        updateData
        returns (uint256 amountBCOut)
    {
        address[] memory receiverBTs = new address[](1);
        address[] memory receiverCTs = new address[](1);
        uint256[] memory amountFwToMints = new uint256[](1);

        (receiverBTs[0], receiverCTs[0], amountFwToMints[0]) = (receiverBT, receiverCT, _getFloatingFwAmount());

        uint256[] memory amountBCOuts = _mintBC(receiverBTs, receiverCTs, amountFwToMints);
        amountBCOut = amountBCOuts[0];
    }

    /**
     * @notice Tokenize FW into BT + CT for multiple receivers. See `mintBC()` for more details
     * @param receiverBTs the addresses to receive the minted Bond Tokens
     * @param receiverCTs the addresses to receive the minted Coupon Tokens
     * @param amountFwToMints the amounts of FW to mint for each receiver
     * @return amountBCOuts the amounts of BT and CT minted for each receiver
     */
    function mintBCMulti(
        address[] calldata receiverBTs,
        address[] calldata receiverCTs,
        uint256[] calldata amountFwToMints
    ) external nonReentrant updateData returns (uint256[] memory amountBCOuts) {
        uint256 length = receiverBTs.length;

        if (length == 0) revert Errors.ArrayEmpty();
        if (receiverCTs.length != length || amountFwToMints.length != length) {
            revert Errors.ArrayLengthMismatch();
        }

        uint256 totalFwToMint = amountFwToMints.sum();
        if (totalFwToMint > _getFloatingFwAmount()) {
            revert Errors.YieldContractInsufficientFw(_getFloatingFwAmount(), totalFwToMint);
        }

        amountBCOuts = _mintBC(receiverBTs, receiverCTs, amountFwToMints);
    }

    /**
     * @notice converts BT(+CT) tokens into FW, but interests are not redeemed at the
     * same time
     * @dev BT/CT must be transferred to this contract prior to calling
     * @param receiver the address to receive the redeemed FW
     * @return amountFWOut the amount of FW redeemed
     */
    function redeemBC(address receiver) external nonReentrant updateData returns (uint256 amountFWOut) {
        address[] memory receivers = new address[](1);
        uint256[] memory amounts = new uint256[](1);
        (receivers[0], amounts[0]) = (receiver, _getAmountBcToRedeem());

        uint256[] memory amountFwOuts;
        amountFwOuts = _redeemBC(receivers, amounts);

        amountFWOut = amountFwOuts[0];
    }

    /**
     * @notice redeems BT(+CT) for multiple users. See `redeemBC()`
     * @dev BT/CT must be transferred to this contract prior to calling
     * @dev fails if unable to redeem the total BC amount in `amountBcToRedeems`
     * @param receivers the addresses to receive the redeemed FW
     * @param amountBcToRedeems the amounts of BC to redeem for each receiver
     * @return amountFwOuts the amounts of FW redeemed for each receiver
     */
    function redeemBCMulti(address[] calldata receivers, uint256[] calldata amountBcToRedeems)
        external
        nonReentrant
        updateData
        returns (uint256[] memory amountFwOuts)
    {
        if (receivers.length != amountBcToRedeems.length) revert Errors.ArrayLengthMismatch();
        if (receivers.length == 0) revert Errors.ArrayEmpty();
        amountFwOuts = _redeemBC(receivers, amountBcToRedeems);
    }

    /**
     * @notice Redeems interests and rewards for `user`
     * @param user the address to redeem interests and rewards for
     * @param redeemInterest will only transfer out interest for user if true
     * @param redeemRewards will only transfer out rewards for user if true
     * @return interestOut the amount of interest redeemed
     * @return rewardsOut unused, always returns an empty array for compatibility reasons
     * @dev With CT yielding interest in the form of FW, which is redeemable by users, the reward
     * distribution should be based on the amount of FWs that their CT currently represent, plus
     * their dueInterest. It has been proven and tested that _rewardSharesUser will not change over
     * time, unless users redeem their dueInterest or redeemBC. Due to this, it is required to
     * update users' accruedReward STRICTLY BEFORE transferring out their interest.
     */
    function redeemDueInterestAndRewards(address user, bool redeemInterest, bool redeemRewards)
        external
        nonReentrant
        updateData
        returns (uint256 interestOut, uint256[] memory rewardsOut)
    {
        if (!redeemInterest && !redeemRewards) revert Errors.YCNothingToRedeem();
        address[] memory tokens = getRewardTokens();
        rewardsOut = new uint256[](0);

        if (redeemInterest) {
            _distributeInterest(user);
            interestOut = _doTransferOutInterest(user, FW, factory);
            emit RedeemInterest(user, interestOut);
        } else {
            interestOut = 0;
        }
    }

    /**
     * @notice Redeems all post-expiry interests and rewards to the treasury
     * @dev All rewards and interests accrued post-expiry goes to the treasury.
     * Reverts if called pre-expiry.
     * @return interestOut the amount of interest redeemed to treasury
     * @return rewardsOut unused, always returns an empty array for compatibility reasons
     */
    function redeemInterestAndRewardsPostExpiryForTreasury()
        external
        nonReentrant
        updateData
        returns (uint256 interestOut, uint256[] memory rewardsOut)
    {
        if (!isExpired()) revert Errors.YCNotExpired();

        address treasury = IBCContractFactory(factory).treasury();

        address[] memory tokens = getRewardTokens();
        rewardsOut = new uint256[](tokens.length);

        interestOut = postExpiry.totalFwInterestForTreasury;
        postExpiry.totalFwInterestForTreasury = 0;
        _transferOut(FW, treasury, interestOut);

        emit CollectInterestFee(interestOut);
    }

    /// @notice updates and returns the reward indexes
    /// @return the current reward indexes for each reward token
    function rewardIndexesCurrent() external override nonReentrant returns (uint256[] memory) {
        return IFiraWrappedStandardized(FW).rewardIndexesCurrent();
    }

    /**
     * @notice updates and returns the current BC index
     * @dev this function maximizes the current BC index with the previous index, guaranteeing
     * non-decreasing BC index
     * @dev if `doCacheIndexSameBlock` is true, BC index only updates at most once per block,
     * and has no state changes on the second call onwards (within the same block).
     * @dev see `bcIndexStored()` for view function for cached value.
     * @return currentIndex the current BC index
     */
    function bcIndexCurrent() public nonReentrant returns (uint256 currentIndex) {
        currentIndex = _bcIndexCurrent();
    }

    /// @notice returns the last-updated BC index
    /// @return the last-updated BC index
    function bcIndexStored() public view returns (uint256) {
        return _bcIndexStored;
    }

    /**
     * @notice do a final rewards redeeming, and sets post-expiry data
     * @dev has no effect if called pre-expiry
     */
    function setPostExpiryData() external nonReentrant {
        if (isExpired()) {
            _setPostExpiryData();
        }
    }

    /**
     * @notice returns the current data post-expiry, if exists
     * @dev reverts if post-expiry data not set (see `setPostExpiryData()`)
     * @return firstBCIndex the earliest BC index post-expiry
     * @return totalFwInterestForTreasury current amount of FW interests post-expiry for treasury
     * @return firstRewardIndexes the earliest reward indices post-expiry, for each reward token
     * @return userRewardOwed amount of unclaimed user rewards, for each reward token
     */
    function getPostExpiryData()
        external
        view
        returns (
            uint256 firstBCIndex,
            uint256 totalFwInterestForTreasury,
            uint256[] memory firstRewardIndexes,
            uint256[] memory userRewardOwed
        )
    {
        if (postExpiry.firstBCIndex == 0) {
            revert Errors.YCPostExpiryDataNotSet();
        }

        firstBCIndex = postExpiry.firstBCIndex;
        totalFwInterestForTreasury = postExpiry.totalFwInterestForTreasury;

        address[] memory tokens = getRewardTokens();
        firstRewardIndexes = new uint256[](tokens.length);
        userRewardOwed = new uint256[](tokens.length);

        for (uint256 i = 0; i < tokens.length; ++i) {
            firstRewardIndexes[i] = postExpiry.firstRewardIndex[tokens[i]];
            userRewardOwed[i] = postExpiry.userRewardOwed[tokens[i]];
        }
    }

    function _mintBC(address[] memory receiverBTs, address[] memory receiverCTs, uint256[] memory amountFwToMints)
        internal
        returns (uint256[] memory amountBCOuts)
    {
        amountBCOuts = new uint256[](amountFwToMints.length);

        // If expired, we should mint using the post-expiry first BC index
        uint256 index = _getInterestIndex();

        for (uint256 i = 0; i < amountFwToMints.length; i++) {
            amountBCOuts[i] = _calcBcToMint(amountFwToMints[i], index);

            _mint(receiverCTs[i], amountBCOuts[i]);
            IBondToken(BT).mintByCT(receiverBTs[i], amountBCOuts[i]);

            emit Mint(msg.sender, receiverBTs[i], receiverCTs[i], amountFwToMints[i], amountBCOuts[i]);
        }
    }

    /// @notice checks if the Coupon Token has expired
    /// @return true if expired, false otherwise
    function isExpired() public view returns (bool) {
        return MiniHelpers.isCurrentlyExpired(expiry);
    }

    function _redeemBC(address[] memory receivers, uint256[] memory amountBcToRedeems)
        internal
        returns (uint256[] memory amountFwOuts)
    {
        uint256 totalAmountBcToRedeem = amountBcToRedeems.sum();
        IBondToken(BT).burnByCT(address(this), totalAmountBcToRedeem);
        if (!isExpired()) _burn(address(this), totalAmountBcToRedeem);

        uint256 index = _bcIndexCurrent();
        uint256 totaFwInterestPostExpiry;
        amountFwOuts = new uint256[](receivers.length);

        for (uint256 i = 0; i < receivers.length; i++) {
            uint256 fwInterestPostExpiry;
            (amountFwOuts[i], fwInterestPostExpiry) = _calcFwRedeemableFromBC(amountBcToRedeems[i], index);
            _transferOut(FW, receivers[i], amountFwOuts[i]);
            totaFwInterestPostExpiry += fwInterestPostExpiry;

            emit Burn(msg.sender, receivers[i], amountBcToRedeems[i], amountFwOuts[i]);
        }
        if (totaFwInterestPostExpiry != 0) {
            postExpiry.totalFwInterestForTreasury += totaFwInterestPostExpiry.Uint128();
            emit TreasuryFwInterestAccrued(totaFwInterestPostExpiry, postExpiry.totalFwInterestForTreasury);
        }
    }

    function _calcBcToMint(uint256 amountFw, uint256 indexCurrent) internal pure returns (uint256 amountBC) {
        // doesn't matter before or after expiry
        return FWUtils.fwToAsset(indexCurrent, amountFw);
    }

    function _calcFwRedeemableFromBC(uint256 amountBC, uint256 indexCurrent)
        internal
        view
        returns (uint256 fwToUser, uint256 fwInterestPostExpiry)
    {
        fwToUser = FWUtils.assetToFw(indexCurrent, amountBC);
        if (isExpired()) {
            uint256 totalFwRedeemable = FWUtils.assetToFw(postExpiry.firstBCIndex, amountBC);
            fwInterestPostExpiry = totalFwRedeemable - fwToUser;
        }
    }

    function _getAmountBcToRedeem() internal view returns (uint256) {
        if (!isExpired()) return PMath.min(_selfBalance(BT), balanceOf(address(this)));
        else return _selfBalance(BT);
    }

    function _updateFwReserve() internal virtual {
        fwReserve = _selfBalance(FW);
    }

    function _getFloatingFwAmount() internal view returns (uint256 amount) {
        amount = _selfBalance(FW) - fwReserve;
        if (amount == 0) revert Errors.YCNoFloatingFw();
    }

    function _setPostExpiryData() internal {
        PostExpiryData storage local = postExpiry;
        if (local.firstBCIndex != 0) return; // already set

        local.firstBCIndex = _bcIndexCurrent().Uint128();
        address[] memory rewardTokens = IFiraWrappedStandardized(FW).getRewardTokens();
        uint256[] memory rewardIndexes = IFiraWrappedStandardized(FW).rewardIndexesCurrent();
        for (uint256 i = 0; i < rewardTokens.length; i++) {
            local.firstRewardIndex[rewardTokens[i]] = rewardIndexes[i];
            local.userRewardOwed[rewardTokens[i]] = _selfBalance(rewardTokens[i]);
        }
        emit PostExpiryDataSet(local.firstBCIndex);
    }

    /* ///////////////////////////////////////////////////////////////
                               INTEREST-RELATED
    //////////////////////////////////////////////////////////////*/

    function _getInterestIndex() internal virtual override returns (uint256 index) {
        if (isExpired()) index = postExpiry.firstBCIndex;
        else index = _bcIndexCurrent();
    }

    function _bcIndexCurrent() internal returns (uint256 currentIndex) {
        if (doCacheIndexSameBlock && bcIndexLastUpdatedBlock == block.number) return _bcIndexStored;

        uint128 index128 = PMath.max(IFiraWrappedStandardized(FW).exchangeRate(), _bcIndexStored).Uint128();

        currentIndex = index128;
        _bcIndexStored = index128;
        bcIndexLastUpdatedBlock = uint128(block.number);

        emit NewInterestIndex(currentIndex);
    }

    function _CTbalance(address user) internal view override returns (uint256) {
        return balanceOf(user);
    }

    /* ///////////////////////////////////////////////////////////////
                               REWARDS-RELATED
    //////////////////////////////////////////////////////////////*/

    /// @notice returns the list of reward token addresses
    /// @return the array of reward token addresses
    function getRewardTokens() public view returns (address[] memory) {
        return IFiraWrappedStandardized(FW).getRewardTokens();
    }

    // solhint-disable-next-line ordering
    function _beforeTokenTransfer(address from, address to, uint256) internal override {
        if (isExpired()) _setPostExpiryData();
        _distributeInterestForTwo(from, to);
    }
}
