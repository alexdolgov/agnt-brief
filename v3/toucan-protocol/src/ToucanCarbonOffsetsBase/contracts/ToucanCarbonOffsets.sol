// SPDX-FileCopyrightText: 2021 Toucan Labs
//
// SPDX-License-Identifier: UNLICENSED

// If you encounter a vulnerability or an issue, please contact <security@toucan.earth> or visit security.toucan.earth
pragma solidity 0.8.14;

import './ToucanCarbonOffsetsBase.sol';

/// @notice Implementation contract of the TCO2 tokens (ERC20)
/// These tokenized carbon offsets are specific to a vintage and its associated attributes
/// In order to mint TCO2s a user must deposit a matching CarbonOffsetBatch
/// @dev Each TCO2 contract is deployed via a Beacon Proxy in `ToucanCarbonOffsetsFactory`
contract ToucanCarbonOffsets is ToucanCarbonOffsetsBase {
    // ----------------------------------------
    //      Constants
    // ----------------------------------------

    /// @dev Version-related parameters. VERSION keeps track of production
    /// releases. VERSION_RELEASE_CANDIDATE keeps track of iterations
    /// of a VERSION in our staging environment.
    string public constant VERSION = '1.5.0';
    uint256 public constant VERSION_RELEASE_CANDIDATE = 2;

    // ----------------------------------------
    //       Upgradable related functions
    // ----------------------------------------

    function initialize(
        string memory name_,
        string memory symbol_,
        uint256 _projectVintageTokenId,
        address _contractRegistry
    ) external virtual initializer {
        __ERC20_init_unchained(name_, symbol_);
        projectVintageTokenId = _projectVintageTokenId;
        contractRegistry = _contractRegistry;
    }

    // ----------------------------------------
    //       Admin functions
    // ----------------------------------------

    /// @notice Defractionalize batch NFT by burning the amount
    /// of TCO2 from the sender and transfer the batch NFT that
    /// was selected to the sender.
    /// The only valid sender currently is the TCO2 factory owner.
    /// @param tokenId The batch NFT to defractionalize from the TCO2
    function defractionalize(uint256 tokenId)
        external
        whenNotPaused
        onlyFactoryOwner
    {
        address batchNFT = IToucanContractRegistry(contractRegistry)
            .carbonOffsetBatchesAddress();

        // Fetch and burn amount of the NFT to be defractionalized
        (, uint256 quantity, ) = ICarbonOffsetBatches(batchNFT).getBatchNFTData(
            tokenId
        );
        _burn(msg.sender, quantity);

        // Transfer batch NFT to sender
        IERC721(batchNFT).transferFrom(address(this), msg.sender, tokenId);
    }

    // ----------------------------------------
    //       Permissionless functions
    // ----------------------------------------

    /// @notice Receive hook to fractionalize Batch-NFTs into ERC20's
    /// @dev Function is called with `operator` as `msg.sender` in a reference implementation by OZ
    /// `from` is the previous owner, not necessarily the same as operator.
    /// The hook checks if NFT collection is whitelisted and next if attributes are matching this ERC20 contract
    function onERC721Received(
        address, /* operator */
        address from,
        uint256 tokenId,
        bytes calldata /* data */
    ) external virtual override whenNotPaused returns (bytes4) {
        // msg.sender is the CarbonOffsetBatches contract
        require(
            checkWhiteListed(msg.sender),
            'Error: Batch-NFT not from whitelisted contract'
        );

        (
            uint256 gotVintageTokenId,
            uint256 quantity,
            RetirementStatus status
        ) = ICarbonOffsetBatches(msg.sender).getBatchNFTData(tokenId);
        require(
            gotVintageTokenId == projectVintageTokenId,
            'Error: non-matching NFT'
        );
        require(
            status == RetirementStatus.Confirmed,
            'BatchNFT not yet confirmed'
        );

        minterToId[from] = tokenId;
        /// @dev multiply tonne quantity with decimals
        quantity = quantity * 10**decimals();

        require(
            getRemaining() >= quantity,
            'Error: Quantity in batch is higher than total vintages'
        );

        IToucanCarbonOffsetsFactory tco2Factory = IToucanCarbonOffsetsFactory(
            IToucanContractRegistry(contractRegistry)
                .toucanCarbonOffsetsFactoryAddress(standardRegistry())
        );
        address bridgeFeeReceiver = tco2Factory.bridgeFeeReceiverAddress();

        if (bridgeFeeReceiver == address(0x0)) {
            // @dev if no bridge fee receiver address is set, mint without fees
            _mint(from, quantity);
        } else {
            // @dev calculate bridge fees
            (uint256 feeAmount, uint256 feeBurnAmount) = tco2Factory
                .getBridgeFeeAndBurnAmount(quantity);
            _mint(from, quantity - feeAmount);
            address bridgeFeeBurnAddress = tco2Factory.bridgeFeeBurnAddress();
            if (bridgeFeeBurnAddress != address(0x0) && feeBurnAmount > 0) {
                feeAmount -= feeBurnAmount;
                _mint(bridgeFeeReceiver, feeAmount);
                _mint(bridgeFeeBurnAddress, feeBurnAmount);
                emit FeePaid(from, feeAmount);
                emit FeeBurnt(from, feeBurnAmount);
            } else if (feeAmount > 0) {
                _mint(bridgeFeeReceiver, feeAmount);
                emit FeePaid(from, feeAmount);
            }
        }

        return this.onERC721Received.selector;
    }

    /// @dev Internal helper to check if CarbonOffsetBatches is whitelisted (official)
    function checkWhiteListed(address collection)
        internal
        view
        virtual
        returns (bool)
    {
        if (
            collection ==
            IToucanContractRegistry(contractRegistry)
                .carbonOffsetBatchesAddress()
        ) {
            return true;
        } else {
            return false;
        }
    }

    /// @dev function to achieve backwards compatibility
    /// Converts retired amount to an event that can be attached to an NFT
    function convertAmountToEvent()
        internal
        returns (uint256 retirementEventId)
    {
        uint256 amount = retiredAmount[msg.sender];
        retiredAmount[msg.sender] = 0;

        address certAddr = IToucanContractRegistry(contractRegistry)
            .retirementCertificatesAddress();
        retirementEventId = IRetirementCertificates(certAddr).registerEvent(
            msg.sender,
            projectVintageTokenId,
            amount,
            true
        );
    }

    /// @notice Mint an NFT showing how many tonnes of CO2 have been retired/cancelled
    /// Going forward users should mint NFT directly in the RetirementCertificates contract.
    /// @param retiringEntityString An identifiable string for the retiring entity, eg. their name.
    /// @param beneficiary The beneficiary to set in the NFT.
    /// @param beneficiaryString The beneficiaryString to set in the NFT.
    /// @param retirementMessage The retirementMessage to set in the NFT.
    function mintCertificateLegacy(
        string calldata retiringEntityString,
        address beneficiary,
        string calldata beneficiaryString,
        string calldata retirementMessage
    ) external whenNotPaused {
        uint256 retirementEventId = convertAmountToEvent();
        uint256[] memory retirementEventIds = new uint256[](1);
        retirementEventIds[0] = retirementEventId;

        address certAddr = IToucanContractRegistry(contractRegistry)
            .retirementCertificatesAddress();
        //slither-disable-next-line unused-return
        IRetirementCertificates(certAddr).mintCertificate(
            msg.sender,
            retiringEntityString,
            beneficiary,
            beneficiaryString,
            retirementMessage,
            retirementEventIds
        );
    }

    function standardRegistry() public pure override returns (string memory) {
        return 'verra';
    }
}
