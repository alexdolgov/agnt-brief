// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

/*
  ______                       __                                  __ 
 /      \                     /  |                                /  |
/$$$$$$  |  ______    ______  $$ |____    ______   _______    ____$$ |
$$ |__$$ | /      \  /      \ $$      \  /      \ /       \  /    $$ |
$$    $$ |/$$$$$$  |/$$$$$$  |$$$$$$$  |/$$$$$$  |$$$$$$$  |/$$$$$$$ |
$$$$$$$$ |$$ |  $$ |$$    $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |
$$ |  $$ |$$ |__$$ |$$$$$$$$/ $$ |__$$ |$$ \__$$ |$$ |  $$ |$$ \__$$ |
$$ |  $$ |$$    $$/ $$       |$$    $$/ $$    $$/ $$ |  $$ |$$    $$ |
$$/   $$/ $$$$$$$/   $$$$$$$/ $$$$$$$/   $$$$$$/  $$/   $$/  $$$$$$$/ 
          $$ |                                                        
          $$ |                                                        
          $$/                                                         
 * App:             https://ape.bond
 * Medium:          https://apebond.medium.com/
 * Twitter:         https://twitter.com/ApeBond
 * Telegram:        https://t.me/ape_bond
 * Discord:         https://apebond.click/discord
 * Reddit:          https://apebond.click/reddit
 * Instagram:       https://www.instagram.com/ape.bond
 * GitHub:          https://github.com/ApeSwapFinance
 */

import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "../libraries/PendingOwnableUpgradeable.sol";
import "../interfaces/ICustomBillSale.sol";
import "../interfaces/ICustomTreasury.sol";
import "../interfaces/IBillNft.sol";
import "../curves/LinearVestingCurve.sol";

/**
 * @title CustomBillSale (ApeSwap Treasury BillSale)
 * @author ApeSwap
 * @custom:version 2.1.0
 * @notice
 * - Control Variable is scaled up by 100x compared to v1.X.X.
 * - principalToken MUST NOT be a fee-on-transfer token
 * - payoutToken MAY be a fee-on-transfer, but it is HIGHLY recommended that
 *     the CustomBillSale and CustomTreasury contracts are whitelisted from the
 *     fee-on-transfer. This is because the payoutToken makes multiple hops
 *     between contracts.
 * - WARN Currently maxTotalPayout MUST be smaller than totalRaise to have a valid price
 */
contract CustomBillSale is
    Initializable,
    PendingOwnableUpgradeable,
    ICustomBillSale,
    ReentrancyGuard
{
    using SafeERC20Upgradeable for IERC20MetadataUpgradeable;
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.UintSet;

    /* ======== EVENTS ======== */

    event FeeToChanged(address indexed newFeeTo);
    event MaxTotalPayoutChanged(uint256 newMaxTotalPayout);
    event UpdateClaimApproval(
        address indexed owner,
        address indexed approvedAccount,
        bool approved
    );
    event BillCreated(
        uint256 deposit,
        uint256 payout,
        uint256 expires,
        uint256 indexed billId
    );
    event Deposit(
        uint256 deposit,
        address indexed depositor
    );
    event BillClaimed(
        uint256 indexed billId,
        address indexed recipient,
        uint256 payout,
        uint256 remaining
    );
    event SetFees(uint256[] fees, uint256[] tierCeilings);
    event BillInitialized(BillSaleTerms billSaleTerms, uint256 lastDecay);
    event TermsSet(PARAMETER parameter, uint256 input);

    /* ======== STRUCTS ======== */

    struct FeeTiers {
        uint256 tierCeilings; // principal billed till next tier
        uint256 fees; // in millionths (i.e. 1e4 = 1%)
    }

    /* ======== STATE VARIABLES ======== */

    IERC20MetadataUpgradeable public payoutToken; // token paid for principal
    IERC20MetadataUpgradeable public principalToken; // inflow token
    ICustomTreasury public customTreasury; // pays for and receives principal
    address public feeTo; // receives fee
    address public DAO; // change feeTo address
    IBillNft public billNft;
    EnumerableSetUpgradeable.UintSet private billIssuedIds;
    IVestingCurve public vestingCurve;

    uint256 public totalPrincipalBilled;
    uint256 public totalPayoutGiven;

    BillSaleTerms public terms; // stores terms for new bills
    FeeTiers[] public feeTiers; // stores fee tiers
    uint8 public constant MAX_FEE_TIERS = 5;

    mapping(uint256 => BillSale) public billInfo; // stores bill information for nfts
    mapping(address => BillSale) public accountInfo; // stores bill information for nfts
    mapping(address => mapping(address => bool)) public redeemerApproved; // Stores user approved redeemers
    
    uint16 constant PRECISION = 10000;

    bool public feeInPayout;
    uint256 public constant MAX_FEE = 1e6;
    uint256 public startVestingTimestamp;
    uint256 public price;
    bool public finalized;

    /**
     * "Storage gaps are a convention for reserving storage slots in a base contract, allowing future
     *  versions of that contract to use up those slots without affecting the storage layout of child contracts."
     *
     *  For more info, see "Storage Gaps" at https://docs.openzeppelin.com/
     */
    uint256[50] private __gap;

    /* ======== INITIALIZATION ======== */

    function initialize(
        ICustomTreasury _customTreasury,
        BillCreationDetails memory _billCreationDetails,
        BillSaleTerms memory _billSaleTerms,
        BillAccounts memory _billAccounts
    ) public initializer {
        require(
            address(_customTreasury) != address(0),
            "customTreasury cannot be zero"
        );
        customTreasury = _customTreasury;
        require(
            _billCreationDetails.payoutToken == _customTreasury.payoutToken()
        );
        payoutToken = IERC20MetadataUpgradeable(
            _billCreationDetails.payoutToken
        );
        require(
            _billCreationDetails.principalToken != address(0),
            "principalToken cannot be zero"
        );
        principalToken = IERC20MetadataUpgradeable(
            _billCreationDetails.principalToken
        );
        uint256 currentTimestamp = block.timestamp;
        if (address(_billCreationDetails.vestingCurve) == address(0)) {
            vestingCurve = new LinearVestingCurve();
        } else {
            /// @dev Validate vesting curve
            _billCreationDetails.vestingCurve.getVestedPayoutAtTime(
                1e18,
                4000,
                currentTimestamp - 2000,
                currentTimestamp
            );
            vestingCurve = _billCreationDetails.vestingCurve;
        }
        require(_billAccounts.feeTo != address(0), "feeTo cannot be zero");
        feeTo = _billAccounts.feeTo;
        require(_billAccounts.DAO != address(0), "DAO cannot be zero");
        DAO = _billAccounts.DAO;

        require(_billAccounts.billNft != address(0), "billNft cannot be zero");
        billNft = IBillNft(_billAccounts.billNft);
        require(
            _billCreationDetails.initialOwner != address(0),
            "owner cannot be zero"
        );
        __Ownable_init();
        _transferOwnership(_billCreationDetails.initialOwner);

        _setFeeTiers(
            _billCreationDetails.fees,
            _billCreationDetails.tierCeilings
        );
        feeInPayout = _billCreationDetails.feeInPayout;

        require(
            _billCreationDetails.startVestingTimestamp > block.timestamp ||
                _billCreationDetails.startVestingTimestamp == 0,
            "startVestingTimestamp cannot be in the past"
        );

        startVestingTimestamp = _billCreationDetails.startVestingTimestamp;

        require(_billSaleTerms.initialRelease <= PRECISION, "Initial release must be <= 100%");

        require(
            _billSaleTerms.endTime > block.timestamp,
            "endTime cannot be in the past"
        );

        require(
            _billSaleTerms.startTime > block.timestamp,
            "startTime cannot be in the past"
        );

        require(
            _billSaleTerms.vestingTerm >= 36 hours &&
                _billSaleTerms.vestingTerm <= 52 weeks * 10,
            "Vesting must be >= 36 hours"
        );

        require(_billSaleTerms.minimumPrice > 0, "Minimum price required");

        require(
            _billSaleTerms.totalRaise > 0 && _billSaleTerms.maxTotalPayout > 0,
            "totalRaise & maxTotalPayout price required"
        );

        price = _billSaleTerms.maxTotalPayout / _billSaleTerms.totalRaise;

        require(price > 0, "Price must be > 0");

        terms = _billSaleTerms;

        emit BillInitialized(_billSaleTerms, currentTimestamp);
    }

    /* ======== OWNER FUNCTIONS ======== */

    enum PARAMETER {
        VESTING,
        MIN_PRICE,
        TOTAL_RAISE,
        INITIAL_RELEASE,
        MAX_TOTAL_PAYOUT,
        END_TIME,
        START_TIME
    }

    /**
     *  @notice set parameters for new bills
     *  @param _parameter PARAMETER
     *  @param _input uint
     */
    function setBillTerms(
        PARAMETER _parameter,
        uint256 _input
    ) external onlyOwner {
        if (_parameter == PARAMETER.VESTING) {
            // 0
            require(
                _input >= 129600 && _input <= 52 weeks * 10,
                "Vesting must be >= 36 hours"
            );
            terms.vestingTerm = _input;
        } else if (_parameter == PARAMETER.MIN_PRICE) {
            // 1
            require(_input > 0, "Minimum price required");
            terms.minimumPrice = _input;
        } else if (_parameter == PARAMETER.TOTAL_RAISE) {
            // 2
            require(
                _input >= terms.totalRaise,
                "totalRaise cannot be below totalRaise"
            );
            terms.totalRaise = _input;
        } else if (_parameter == PARAMETER.INITIAL_RELEASE) {
            // 3
            require(
                _input <= PRECISION,
                "Initial release must be <= 100%"
            );
            terms.initialRelease = uint16(_input);
        } else if (_parameter == PARAMETER.MAX_TOTAL_PAYOUT) {
            // 4
            require(
                _input >= totalPayoutGiven,
                "maxTotalPayout cannot be below totalPayoutGiven"
            );
            terms.maxTotalPayout = _input;
        } else if (_parameter == PARAMETER.END_TIME) {
            // 5
            require(_input > block.timestamp, "endTime cannot be in the past");
            terms.endTime = _input;
        } 
         else if (_parameter == PARAMETER.START_TIME) {
            // 6
            require(_input > block.timestamp, "startTime cannot be in the past");
            terms.startTime = _input;
        } 
        emit TermsSet(_parameter, _input);
    }

    /**
     *  @notice helper function to view the maxTotalPayout
     *  @dev backward compatibility for V1
     *  @return uint256 max amount of payoutTokens to offer
     */
    function getMaxTotalPayout() external view returns (uint256) {
        return terms.maxTotalPayout;
    }

    /**
     *  @notice helper function to view the totalRaise
     *  @return uint256 max amount of totalRaise to offer
     */
    function getTotalRaise() external view returns (uint256) {
        return terms.totalRaise;
    }

    /**
     *  @notice Set fees based on totalPrincipalBilled
     *  @param fees Fee settings which corelate to the tierCeilings
     *  @param tierCeilings totalPrincipalBilled amount used to determine when to move to the next fee
     *
     *  Requirements
     *
     *  - tierCeilings MUST be in ascending order
     */
    function setFeeTiers(
        uint256[] memory fees,
        uint256[] memory tierCeilings
    ) external onlyOwner {
        _setFeeTiers(fees, tierCeilings);
    }

    function finalizeSale() external onlyOwner {
        finalized = true;
    }

    /**
     *  @notice change address of Treasury
     *  @param _feeTo address
     */
    function changeFeeTo(address _feeTo) external {
        require(msg.sender == DAO, "Only DAO");
        require(_feeTo != address(0), "Cannot be address(0)");
        feeTo = _feeTo;
        emit FeeToChanged(feeTo);
    }

    /* ======== USER FUNCTIONS ======== */

    /**
     *  @notice Purchase a bill by depositing principalTokens
     *  @param _amount Amount of principalTokens to deposit/purchase a bill
     *  @param _maxPrice Max price willing to pay for for this deposit
     *  @param _depositor Address which will own the bill
     *  @return uint256 payout amount in payoutTokens
     *
     * Requirements
     * - Only Contracts can deposit on behalf of other accounts. Otherwise msg.sender MUST == _depositor.
     * - principalToken MUST NOT be a reflect token
     */
    function deposit(
        uint256 _amount,
        uint256 _maxPrice,
        address _depositor
    ) public virtual nonReentrant returns (uint256) {
        require(saleActive(), "Sale not active");
        require(_depositor != address(0), "Invalid address");
        require(
            msg.sender == _depositor ||
                AddressUpgradeable.isContract(msg.sender),
            "no deposits to other address"
        );

        uint256 truePrice = trueBillPrice();
        require(_maxPrice >= truePrice, "Slippage more than max price"); // slippage protection
        // Calculate payout and fee

        // Transfer principal token to BillContract and account for fee on transfer
        uint256 before = principalToken.balanceOf(address(this));
        principalToken.safeTransferFrom(msg.sender, address(this), _amount);
        uint256 depositAmount = principalToken.balanceOf(address(this)) -
            before;

        totalPrincipalBilled += depositAmount; // total billed increased
        if (!terms.oversubscription) {
            require(
                totalPrincipalBilled <= terms.totalRaise,
                "Oversubscription"
            );
        }

        uint256 vestingStartTimestamp = (startVestingTimestamp == 0 ||
            startVestingTimestamp < block.timestamp)
            ? block.timestamp
            : startVestingTimestamp;

        accountInfo[msg.sender] = BillSale({
            payout: 0,
            depositAmount: depositAmount +
                accountInfo[msg.sender].depositAmount,
            payoutClaimed: 0,
            vesting: terms.vestingTerm,
            vestingTerm: terms.vestingTerm,
            vestingStartTimestamp: vestingStartTimestamp,
            lastClaimTimestamp: vestingStartTimestamp,
            truePricePaid: truePrice
        });

        emit Deposit(
            depositAmount,
            msg.sender
        );

        return depositAmount;
    }

    function redeem() public {
        require(finalized, "Sale is not finalized");
        BillSale storage userInfo = accountInfo[msg.sender];
        require(userInfo.payout == 0, "User redeemed");
        (uint payout, uint fee, uint refundingAmount) = payoutFor(userInfo.depositAmount);
        uint256 depositAmount = userInfo.depositAmount - refundingAmount;

        principalToken.safeIncreaseAllowance(address(customTreasury), depositAmount);
        uint256 payoutBalanceBefore = payoutToken.balanceOf(address(this));

        if (feeInPayout) {
            // Deposits principal and receives payout tokens
            customTreasury.deposit_FeeInPayout(
                address(principalToken),
                depositAmount,
                payout,
                fee,
                feeTo
            );
        } else {
            depositAmount -= fee;
            // Deposits principal and receives payout tokens
            customTreasury.deposit(
                address(principalToken),
                depositAmount,
                payout
            );
            if (fee != 0) {
                // if fee, send to treasury
                principalToken.safeTransfer(feeTo, fee);
            }
        }
        principalToken.approve(address(customTreasury), 0);

        uint256 payoutBalanceAdded = payoutToken.balanceOf(address(this)) -
            payoutBalanceBefore;
        accountInfo[msg.sender].payout = payoutBalanceAdded;

        if (refundingAmount > 0) {
            principalToken.safeTransfer(msg.sender, refundingAmount);
        }

        uint256 billId = billNft.mint(msg.sender, address(this));
        /// @note store instant amount?
        uint256 instantAmount = (payoutBalanceAdded * terms.initialRelease) / PRECISION;
        payoutToken.safeTransfer(msg.sender, instantAmount);

        billInfo[billId] = BillSale({
            payout: payoutBalanceAdded - instantAmount,
            depositAmount: depositAmount,
            payoutClaimed: 0,
            vesting: terms.vestingTerm,
            vestingTerm: terms.vestingTerm,
            vestingStartTimestamp: accountInfo[msg.sender]
                .vestingStartTimestamp,
            lastClaimTimestamp: accountInfo[msg.sender].vestingStartTimestamp,
            truePricePaid: price
        });
        billIssuedIds.add(billId);

        emit BillCreated(
            billInfo[billId].depositAmount,
            payoutBalanceAdded,
            billInfo[billId].vestingStartTimestamp + terms.vestingTerm,
            billId
        );
    }

    /**
     *  @notice Claim bill for user
     *  @dev Can only be redeemed by: Owner, BillNft or Approved Redeemer
     *  @param _billId uint256
     *  @return uint
     *
     * Requirements:
     *
     * - billId MUST be valid
     * - bill for billId MUST have a claimablePayout
     * - MUST be called by Owner, Approved Claimer of BillNft
     */
    function claim(uint256 _billId) external nonReentrant returns (uint256) {
        return _claim(_billId);
    }

    /**
     *  @notice Claim multiple bills for user
     *  @param _billIds Array of billIds to claim
     *  @return payout Total payout claimed
     */
    function batchClaim(
        uint256[] calldata _billIds
    ) public nonReentrant returns (uint256 payout) {
        uint256 length = _billIds.length;
        for (uint256 i = 0; i < length; i++) {
            payout += _claim(_billIds[i]);
        }
    }

    /**
     * @notice Claim bill for user
     *
     * See {CustomBill-claim}.
     */
    function _claim(uint256 _billId) internal returns (uint256) {
        BillSale storage bill = billInfo[_billId];
        require(bill.lastClaimTimestamp > 0, "not a valid bill id");
        // verify claim approval
        address _owner= billNft.ownerOf(_billId);
        require(
            msg.sender == _owner ||
                msg.sender == address(billNft) ||
                redeemerApproved[_owner][msg.sender],
            "not approved"
        );
        // verify payout
        uint256 payout = claimablePayout(_billId);
        require(payout > 0, "nothing to claim");
        // adjust payout values
        bill.payoutClaimed += payout;
        // adjust vesting timestamps
        uint256 timeElapsed = block.timestamp - bill.lastClaimTimestamp;
        bill.vesting = timeElapsed >= bill.vesting
            ? 0
            : bill.vesting - timeElapsed;
        bill.lastClaimTimestamp = block.timestamp;
        // transfer, emit and return payout
        payoutToken.safeTransfer(_owner, payout);
        emit BillClaimed(_billId, _owner, payout, bill.payout);
        return payout;
    }

    /**
     *  @notice Allows or disallows a third party address to claim bills on behalf of user
     *  @dev Claims are ALWAYS sent to the owner, regardless of which account redeems
     *  @param approvedAccount Address of account which can claim on behalf of msg.sender
     *  @param approved Set approval state to true or false
     */
    function setClaimApproval(address approvedAccount, bool approved) external {
        redeemerApproved[msg.sender][approvedAccount] = approved;
        emit UpdateClaimApproval(msg.sender, approvedAccount, approved);
    }

    /**
     * @dev See {CustomBill-batchClaim}.
     * @notice Leaving for backward compatibility for V1
     */
    function batchRedeem(
        uint256[] calldata _billIds
    ) external returns (uint256 payout) {
        return batchClaim(_billIds);
    }

    /* ======== INTERNAL HELPER FUNCTIONS ======== */

    /**
     *  @notice calculate current bill price and remove floor if above
     *  @return price_ uint Price is denominated with 18 decimals
     */
    function _billPrice() internal view returns (uint256 price_) {
        price_ = billPrice();
    }

    /**
     *  @notice Set fees based on totalPrincipalBilled
     *  @param fees Fee settings which corelate to the tierCeilings
     *  @param tierCeilings totalPrincipalBilled amount used to determine when to move to the next fee
     *
     *  Requirements
     *
     *  - tierCeilings MUST be in ascending order
     */
    function _setFeeTiers(
        uint256[] memory fees,
        uint256[] memory tierCeilings
    ) internal {
        require(
            tierCeilings.length == fees.length && MAX_FEE_TIERS >= fees.length,
            "tier length != fee length"
        );
        // Remove old fees
        uint feeTiersLength = feeTiers.length;
        if (feeTiersLength > 0) {
            for (uint256 j; j < feeTiersLength; j++) {
                feeTiers.pop();
            }
        }
        // Validate and setup new FeeTiers
        uint256 previousCeiling;
        for (uint256 i; i < tierCeilings.length; i++) {
            require(fees[i] < MAX_FEE, "Invalid fee");
            require(
                i == 0 || previousCeiling < tierCeilings[i],
                "only increasing order"
            );
            previousCeiling = tierCeilings[i];
            if (getFeeTierLength() > i) {
                feeTiers[i] = FeeTiers({
                    tierCeilings: tierCeilings[i],
                    fees: fees[i]
                });
            } else {
                feeTiers.push(
                    FeeTiers({tierCeilings: tierCeilings[i], fees: fees[i]})
                );
            }
        }
        require(fees.length == getFeeTierLength(), "feeTier mismatch");
        emit SetFees(fees, tierCeilings);
    }

    /* ======== VIEW FUNCTIONS ======== */


    function saleActive() public view returns (bool) {
        return !finalized && block.timestamp < terms.endTime && block.timestamp > terms.startTime;
    }

    function hasRedeemed(address _user) external view returns (bool) {
        return accountInfo[_user].payout > 0;
    }

    /**
     *  @notice get bill info for given billId
     *  @param billId Id of the bill NFT
     *  @return BillSale bill details
     */
    function getBillInfo(uint256 billId) external view override(ICustomBillSale) returns (BillSale memory) {
        return billInfo[billId];
    }

    /**
     *  @notice get user info for given address
     *  @param user Address of which to get details
     *  @return BillSale address details
     */
    function getUserInfo(address user) external view returns (BillSale memory) {
        return accountInfo[user];
    }

    /**
     *  @notice calculate current bill premium
     *  @return price_ uint Price is denominated using 18 decimals
     */
    function billPrice() public view returns (uint256 price_) {
        price_ = terms.minimumPrice;
    }

    /**
     *  @notice calculate true bill price a user pays including the fee
     *  @return price_ uint
     */
    function trueBillPrice() public view returns (uint256 price_) {
        price_ = (billPrice() * MAX_FEE) / (MAX_FEE - currentFee());
    }

    /// @notice Calculate a users allocation based on the total amount deposited. This is done
    ///  by first scaling the deposited amount and dividing by the total amount.
    /// @param _amount Amount to check against for
    function getUserAllocation(uint256 _amount) public view returns (uint256) {
        // avoid division by zero
        if (totalPrincipalBilled == 0) {
            return 0;
        }

        // allocation:
        // 1e6 = 100%
        // 1e4 = 1%
        // 1 = 0.0001%
        return ((_amount * 1e12) / totalPrincipalBilled);
    }

    /**
     *  @notice calculate user's expected payout for given principal amount.
     *  @dev If feeInPayout flag is set, the _fee will be returned in payout tokens
     *  If feeInPayout flag is NOT set, the _fee will be returned in principal tokens
     *  @param _amount uint Amount of principal tokens to deposit
     *  @return _payout uint Amount of payoutTokens given principal tokens
     *  @return _fee uint Fee is payout or principal tokens depending on feeInPayout flag
     */
    function payoutFor(
        uint256 _amount
    ) public view returns (uint256 _payout, uint256 _fee, uint256 _refundingAmount) {
            _refundingAmount = getRefundingAmount(_amount);
            if (totalPrincipalBilled > terms.totalRaise) {
                _payout = (_amount * terms.maxTotalPayout) / totalPrincipalBilled;
            } else {
                // Return an offering amount equal to a proportion of the raising amount
                _payout = (_amount * terms.maxTotalPayout) / terms.totalRaise;
            }
            uint256 effectiveAmount = _amount - _refundingAmount;
            _fee = (effectiveAmount * currentFee()) / MAX_FEE;
    }

    /**
     *  @notice calculate user's expected payout for given principal amount.
     *  @dev If feeInPayout flag is set, the _fee will be returned in payout tokens
     *  If feeInPayout flag is NOT set, the _fee will be returned in principal tokens
     *  @param _user addres of which we calculate payout
     *  @return _payout uint Amount of payoutTokens given principal tokens
     *  @return _fee uint Fee is payout or principal tokens depending on feeInPayout flag
     */
    function payoutForUser(
        address _user
    ) public view returns (uint256 _payout, uint256 _fee, uint256 _refundingAmount) {
        return (payoutFor(accountInfo[_user].depositAmount));
    }

    /// @notice Calculate a user's refunding amount to be received by multiplying the raising amount by
    ///  the user allocation percentage.
    /// @dev User allocation is scaled up by the ALLOCATION_PRECISION which is scaled down before returning a value.
    /// @param _amount Address of the user allocation to look up
    function getRefundingAmount(uint256 _amount) public view returns (uint256) {
        // Users are able to obtain their refund on the first harvest only
        if (totalPrincipalBilled <= terms.totalRaise) {
            return 0;
        }
        uint256 payAmount = (_amount * terms.totalRaise) / totalPrincipalBilled;
        return _amount - payAmount;
    }

    /// @notice Calculate a user's refunding amount to be received by multiplying the raising amount by
    ///  the user allocation percentage.
    /// @dev User allocation is scaled up by the ALLOCATION_PRECISION which is scaled down before returning a value.
    /// @param _user Address of the user allocation to look up
    function getUserRefundingAmount(address _user) public view returns (uint256) {
        // Users are able to obtain their refund on the first harvest only
        if (accountInfo[_user].payout != 0) {
            return 0;
        }
        return getRefundingAmount(accountInfo[_user].depositAmount);
    }

    /**
     *  @notice Returns the number of seconds left until fully vested.
     *  @dev backward compatibility for V1
     *  @param _billId ID of BillSale
     *  @return pendingVesting_ Number of seconds until vestingEnd timestamp
     */
    function pendingVesting(
        uint256 _billId
    ) external view returns (uint256 pendingVesting_) {
        (, uint256 vestingEnd, ) = _billTimestamps(_billId);
        pendingVesting_ = 0;
        if (vestingEnd > block.timestamp) {
            pendingVesting_ = vestingEnd - block.timestamp;
        }
    }

    /**
     *  @notice Returns the total payout left for the billId passed. (i.e. claimablePayout + vestingPayout)
     *  @dev backward compatibility for V1
     *  @param _billId ID of BillSale
     *  @return pendingPayout_ uint Payout value still remaining in bill
     */
    function pendingPayout(
        uint256 _billId
    ) external view returns (uint256 pendingPayout_) {
        (
            ,
            uint256 vestingPayoutCurrent,
            uint256 claimablePayoutCurrent
        ) = _payoutsCurrent(_billId);
        pendingPayout_ = vestingPayoutCurrent + claimablePayoutCurrent;
    }

    /**
     *  @notice Return the vesting start and end times for a BillSale by ID
     *  @dev Helper function for ERC5725
     *  @param _billId ID of BillSale
     */
    function vestingPeriod(
        uint256 _billId
    ) public view returns (uint256 vestingStart_, uint256 vestingEnd_) {
        (vestingStart_, vestingEnd_, ) = _billTimestamps(_billId);
    }

    /**
     *  @notice Return the amount of tokens locked in a BillSale at the current block.timestamp
     *  @dev Helper function for ERC5725
     *  @param _billId ID of BillSale
     */
    function vestingPayout(
        uint256 _billId
    ) external view returns (uint256 vestingPayout_) {
        (, vestingPayout_, ) = _payoutsCurrent(_billId);
    }

    /**
     *  @notice Return the amount of tokens unlocked at a specific timestamp. Includes claimed tokens.
     *  @dev Helper function for ERC5725.
     *  @param _billId ID of BillSale
     *  @param _timestamp timestamp to check
     */
    function vestedPayoutAtTime(
        uint256 _billId,
        uint256 _timestamp
    ) external view returns (uint256 vestedPayout_) {
        (vestedPayout_, , ) = _payoutsAtTime(_billId, _timestamp);
    }

    /**
     *  @notice Return the amount of payout tokens which are available to be claimed for a BillSale.
     *  @dev Helper function for ERC5725.
     *  @param _billId ID of BillSale
     */
    function claimablePayout(
        uint256 _billId
    ) public view returns (uint256 claimablePayout_) {
        (, , claimablePayout_) = _payoutsCurrent(_billId);
    }

    /**
     * @notice Calculate payoutsAtTime with current timestamp
     * @dev See {CustomBill-_payoutsAtTime}.
     */
    function _payoutsCurrent(
        uint256 _billId
    )
        internal
        view
        returns (
            uint256 vestedPayout_,
            uint256 vestingPayout_,
            uint256 claimablePayout_
        )
    {
        return _payoutsAtTime(_billId, block.timestamp);
    }

    /**
     *  @notice Return the amount of tokens unlocked at a specific timestamp. Includes claimed tokens.
     *  @dev Helper function for ERC5725.
     *  @param _billId ID of BillSale
     *  @param _timestamp timestamp to check
     */
    function _payoutsAtTime(
        uint256 _billId,
        uint256 _timestamp
    )
        internal
        view
        virtual
        returns (
            uint256 vestedPayout_,
            uint256 vestingPayout_,
            uint256 claimablePayout_
        )
    {
        BillSale memory bill = billInfo[_billId];
        // Calculate vestedPayout
        uint256 fullPayout = bill.payout;
        vestedPayout_ = vestingCurve.getVestedPayoutAtTime(
            fullPayout,
            bill.vestingTerm,
            bill.vestingStartTimestamp,
            _timestamp
        );
        // Calculate vestingPayout
        vestingPayout_ = fullPayout - vestedPayout_;
        // Calculate claimablePayout
        uint256 payoutClaimed = bill.payoutClaimed;
        claimablePayout_ = 0;
        if (payoutClaimed < vestedPayout_) {
            claimablePayout_ = vestedPayout_ - payoutClaimed;
        }
    }

    function _billTimestamps(
        uint256 _billId
    )
        internal
        view
        returns (
            uint256 vestingStart_,
            uint256 vestingEnd_,
            uint256 lastClaimTimestamp_
        )
    {
        BillSale memory bill = billInfo[_billId];
        vestingStart_ = bill.vestingStartTimestamp;
        vestingEnd_ = vestingStart_ + bill.vestingTerm;
        lastClaimTimestamp_ = bill.lastClaimTimestamp;
    }

    /**
     *  @notice calculate all billNft ids for sender
     *  @return billNftIds uint[]
     */
    function userBillIds() external view returns (uint256[] memory) {
        return getBillIds(msg.sender);
    }

    /**
     *  @notice calculate all billNft ids for user
     *  @return billNftIds uint[]
     */
    function getBillIds(address user) public view returns (uint256[] memory) {
        uint256 balance = billNft.balanceOf(user);
        return getBillIdsInRange(user, 0, balance);
    }

    /**
     *  @notice calculate billNft ids in range for user
     *  @return billNftIds uint[]
     */
    function getBillIdsInRange(
        address user,
        uint256 start,
        uint256 end
    ) public view returns (uint256[] memory) {
        uint256[] memory result = new uint256[](end - start);
        uint256 resultIndex = 0;
        for (uint256 i = start; i < end; i++) {
            uint256 tokenId = billNft.tokenOfOwnerByIndex(user, i);
            if (billIssuedIds.contains(tokenId)) {
                result[resultIndex] = tokenId;
                resultIndex++;
            }
        }
        // Prune results into condensed array
        uint256[] memory prunedResult = new uint256[](resultIndex);
        for (uint256 j = 0; j < resultIndex; j++) {
            prunedResult[j] = result[j];
        }
        return prunedResult;
    }

    /**
     *  @notice current fee taken of each bill
     *  @return currentFee_ uint
     */
    function currentFee() public view returns (uint256 currentFee_) {
        uint256 tierLength = feeTiers.length;
        for (uint256 i; i < tierLength; i++) {
            if (
                totalPrincipalBilled <= feeTiers[i].tierCeilings ||
                i == tierLength - 1
            ) {
                return feeTiers[i].fees;
            }
        }
    }

    /**
     *  @notice Get the number of fee tiers configured
     *  @return tierLength_ uint
     */
    function getFeeTierLength() public view returns (uint256 tierLength_) {
        tierLength_ = feeTiers.length;
    }

    /**
     * From EnumerableSetUpgradeable...
     *
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function allIssuedBillIds() external view returns (uint256[] memory) {
        return billIssuedIds.values();
    }
}
