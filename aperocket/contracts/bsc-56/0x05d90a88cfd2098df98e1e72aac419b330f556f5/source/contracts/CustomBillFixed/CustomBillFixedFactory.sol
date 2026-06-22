// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

/*
  ______                     ______                                 
 /      \                   /      \                                
|  ▓▓▓▓▓▓\ ______   ______ |  ▓▓▓▓▓▓\__   __   __  ______   ______  
| ▓▓__| ▓▓/      \ /      \| ▓▓___\▓▓  \ |  \ |  \|      \ /      \ 
| ▓▓    ▓▓  ▓▓▓▓▓▓\  ▓▓▓▓▓▓\\▓▓    \| ▓▓ | ▓▓ | ▓▓ \▓▓▓▓▓▓\  ▓▓▓▓▓▓\
| ▓▓▓▓▓▓▓▓ ▓▓  | ▓▓ ▓▓    ▓▓_\▓▓▓▓▓▓\ ▓▓ | ▓▓ | ▓▓/      ▓▓ ▓▓  | ▓▓
| ▓▓  | ▓▓ ▓▓__/ ▓▓ ▓▓▓▓▓▓▓▓  \__| ▓▓ ▓▓_/ ▓▓_/ ▓▓  ▓▓▓▓▓▓▓ ▓▓__/ ▓▓
| ▓▓  | ▓▓ ▓▓    ▓▓\▓▓     \\▓▓    ▓▓\▓▓   ▓▓   ▓▓\▓▓    ▓▓ ▓▓    ▓▓
 \▓▓   \▓▓ ▓▓▓▓▓▓▓  \▓▓▓▓▓▓▓ \▓▓▓▓▓▓  \▓▓▓▓▓\▓▓▓▓  \▓▓▓▓▓▓▓ ▓▓▓▓▓▓▓ 
         | ▓▓                                             | ▓▓      
         | ▓▓                                             | ▓▓      
          \▓▓                                              \▓▓         
 * App:             https://ApeSwap.finance
 * Medium:          https://ape-swap.medium.com
 * Twitter:         https://twitter.com/ape_swap
 * Telegram:        https://t.me/ape_swap
 * Announcements:   https://t.me/ape_swap_news
 * Discord:         https://ApeSwap.click/discord
 * Reddit:          https://reddit.com/r/ApeSwap
 * Instagram:       https://instagram.com/ApeSwap.finance
 * GitHub:          https://github.com/ApeSwapFinance
 */

import "./CustomBillFixedFactoryBase.sol";

contract CustomBillFixedFactory is CustomBillFixedFactoryBase {
    constructor(
        BillDefaultConfig memory _billDefaultConfig,
        ICustomBillFixedPrice.BillAccounts memory _defaultBillAccounts,
        address _factoryStorage,
        address _billImplementationAddress,
        address _treasuryImplementationAddress,
        address[] memory _billCreators
    )
        CustomBillFixedFactoryBase(
            _billDefaultConfig,
            _defaultBillAccounts,
            _factoryStorage,
            _billImplementationAddress,
            _treasuryImplementationAddress,
            _billCreators
        )
    {}

    /* ======== FACTORY FUNCTIONS ======== */

    /**
        @notice deploys ICustomTreasury and ICustomBillFixedPrice contracts and returns address of both
        @param _billCreationDetails ICustomBillFixedPrice.BillCreationDetails
        @param _billTerms ICustomBillFixedPrice.BillTerms
     */
    function createBillAndTreasury(
        ICustomBillFixedPrice.BillCreationDetails calldata _billCreationDetails,
        ICustomBillFixedPrice.BillTerms calldata _billTerms
    )
        external
        onlyRole(BILL_CREATOR_ROLE)
        returns (ICustomTreasury _customTreasury, ICustomBillFixedPrice _bill)
    {
        _customTreasury = _createTreasuryWithDefaults(
            _billCreationDetails.payoutToken,
            _billCreationDetails.initialOwner
        );

        return
            _createBillWithDefaults(
                _billCreationDetails,
                _billTerms,
                _customTreasury
            );
    }

    /**
        @notice deploys ICustomBillFixedPrice contract
        @param _billCreationDetails ICustomBillFixedPrice.BillCreationDetails
        @param _billTerms ICustomBillFixedPrice.BillTerms
        @param _customTreasury address of ICustomTreasury linked to this bill
     */
    function createBill(
        ICustomBillFixedPrice.BillCreationDetails calldata _billCreationDetails,
        ICustomBillFixedPrice.BillTerms calldata _billTerms,
        ICustomTreasury _customTreasury
    )
        external
        onlyRole(BILL_CREATOR_ROLE)
        returns (ICustomTreasury _treasury, ICustomBillFixedPrice _bill)
    {
        return
            _createBillWithDefaults(
                _billCreationDetails,
                _billTerms,
                _customTreasury
            );
    }

    /**
        @notice deploys ICustomTreasury and ICustomBillFixedPrice contracts
        @param _billCreationDetails ICustomBillFixedPrice.BillCreationDetails
        @param _billTerms ICustomBillFixedPrice.BillTerms
        @param _payoutAddress account which receives deposited tokens
     */
    function createBillAndTreasury_CustomConfig(
        ICustomBillFixedPrice.BillCreationDetails calldata _billCreationDetails,
        ICustomBillFixedPrice.BillTerms calldata _billTerms,
        ICustomBillFixedPrice.BillAccounts calldata _billAccounts,
        address _payoutAddress
    )
        external
        onlyRole(BILL_CREATOR_ROLE)
        returns (ICustomTreasury _customTreasury, ICustomBillFixedPrice _bill)
    {
        _customTreasury = _createTreasury(
            _billCreationDetails.payoutToken,
            _billCreationDetails.initialOwner,
            _payoutAddress
        );

        return
            _createBill(
                _billCreationDetails,
                _billTerms,
                _billAccounts,
                _customTreasury
            );
    }

    /**
        @notice deploys ICustomBillFixedPrice contract
        @param _billCreationDetails ICustomBillFixedPrice.BillCreationDetails
        @param _billTerms ICustomBillFixedPrice.BillTerms
        @param _customTreasury address of ICustomTreasury linked to this bill
     */
    function createBill_CustomConfig(
        ICustomBillFixedPrice.BillCreationDetails calldata _billCreationDetails,
        ICustomBillFixedPrice.BillTerms calldata _billTerms,
        ICustomBillFixedPrice.BillAccounts calldata _billAccounts,
        ICustomTreasury _customTreasury
    )
        external
        onlyRole(BILL_CREATOR_ROLE)
        returns (ICustomTreasury _treasury, ICustomBillFixedPrice _bill)
    {
        return
            _createBill(
                _billCreationDetails,
                _billTerms,
                _billAccounts,
                _customTreasury
            );
    }

    /* ======== MANUAL FUNCTIONS ======== */

    /**
        @notice deploys ICustomTreasury and ICustomBillFixedPrice contracts and returns address of both
     */
    function createBillAndTreasury_Explorer(
        address _payoutToken,
        address _principalToken,
        address _initialOwner,
        IVestingCurve _vestingCurve,
        uint256[] calldata _tierCeilings,
        uint256[] calldata _fees,
        uint256 _startVestingTimestamp,
        bool _feeInPayout,
        ICustomBillFixedPrice.BillTerms calldata _billTerms
    )
        external
        onlyRole(BILL_CREATOR_ROLE)
        returns (ICustomTreasury _customTreasury, ICustomBillFixedPrice _bill)
    {
        ICustomBillFixedPrice.BillCreationDetails
            memory billCreationDetails = getBillCreationDetails(
                _payoutToken,
                _principalToken,
                _initialOwner,
                _vestingCurve,
                _tierCeilings,
                _fees,
                _startVestingTimestamp,
                _feeInPayout
            );

        _customTreasury = _createTreasuryWithDefaults(
            billCreationDetails.payoutToken,
            billCreationDetails.initialOwner
        );
        return
            _createBillWithDefaults(
                billCreationDetails,
                _billTerms,
                _customTreasury
            );
    }

    /**
        @notice deploys ICustomBill contract
     */
    function createBill_Explorer(
        address _payoutToken,
        address _principalToken,
        address _initialOwner,
        IVestingCurve _vestingCurve,
        uint256[] calldata _tierCeilings,
        uint256[] calldata _fees,
        uint256 _startVestingTimestamp,
        bool _feeInPayout,
        ICustomBillFixedPrice.BillTerms calldata _billTerms,
        ICustomTreasury _customTreasury
    )
        external
        onlyRole(BILL_CREATOR_ROLE)
        returns (ICustomTreasury _treasury, ICustomBillFixedPrice _bill)
    {
        ICustomBillFixedPrice.BillCreationDetails
            memory billCreationDetails = getBillCreationDetails(
                _payoutToken,
                _principalToken,
                _initialOwner,
                _vestingCurve,
                _tierCeilings,
                _fees,
                _startVestingTimestamp,
                _feeInPayout
            );

        return
            _createBillWithDefaults(
                billCreationDetails,
                _billTerms,
                _customTreasury
            );
    }

    /* ======== HELPER FUNCTIONS ======== */

    /**
     * @notice helper function to create an ICustomBillFixedPrice.BillCreationDetails tuple for CustomTreasury
        and CustomBill deployments
     */
    function getBillCreationDetails(
        address _payoutToken,
        address _principalToken,
        address _initialOwner,
        IVestingCurve _vestingCurve,
        uint256[] calldata _tierCeilings,
        uint256[] calldata _fees,
        uint256 _startVestingTimestamp,
        bool _feeInPayout
    ) public pure returns (ICustomBillFixedPrice.BillCreationDetails memory) {
        return
            ICustomBillFixedPrice.BillCreationDetails({
                payoutToken: _payoutToken,
                principalToken: _principalToken,
                initialOwner: _initialOwner,
                vestingCurve: _vestingCurve,
                tierCeilings: _tierCeilings,
                fees: _fees,
                startVestingTimestamp: _startVestingTimestamp,
                feeInPayout: _feeInPayout
            });
    }

    /**
     * @notice helper function to create an ICustomBillFixedPrice.BillTerms tuple 
     for CustomTreasury and CustomBill deployments
     */
    function getBillTerms(
        uint256 _vestingTerm,
        uint256 _minimumPrice,
        uint256 _maxPayout,
        uint256 _maxTotalPayout
    ) public pure returns (ICustomBillFixedPrice.BillTerms memory) {
        return
            ICustomBillFixedPrice.BillTerms({
                vestingTerm: _vestingTerm,
                minimumPrice: _minimumPrice,
                maxTotalPayout: _maxTotalPayout
            });
    }
}
