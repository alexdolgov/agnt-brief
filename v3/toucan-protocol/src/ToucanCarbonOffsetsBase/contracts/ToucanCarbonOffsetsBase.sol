// SPDX-FileCopyrightText: 2023 Toucan Labs
//
// SPDX-License-Identifier: UNLICENSED

// If you encounter a vulnerability or an issue, please contact <security@toucan.earth> or visit security.toucan.earth
pragma solidity 0.8.14;

import '@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol';
import '@openzeppelin/contracts/token/ERC721/IERC721.sol';
import '@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol';
import '@openzeppelin/contracts/utils/Context.sol';
import '@openzeppelin/contracts/utils/Strings.sol';

import './interfaces/ICarbonOffsetBatches.sol';
import './interfaces/ICarbonProjects.sol';
import './interfaces/ICarbonProjectVintages.sol';
import './interfaces/IPausable.sol';
import './interfaces/IRetirementCertificates.sol';
import './interfaces/IToucanCarbonOffsetsFactory.sol';
import './interfaces/IToucanContractRegistry.sol';
import './CarbonProjectTypes.sol';
import './CarbonProjectVintageTypes.sol';
import './ToucanCarbonOffsetsStorage.sol';
import './CarbonOffsetBatchesTypes.sol';

/// @notice Base contract for any specific contract implementation of the TCO2 tokens (ERC20)
contract ToucanCarbonOffsetsBase is
    ERC20Upgradeable,
    IERC721Receiver,
    ToucanCarbonOffsetsStorage
{
    // ----------------------------------------
    //      Events
    // ----------------------------------------

    event Retired(address sender, uint256 amount, uint256 eventId);
    event FeePaid(address bridger, uint256 fees);
    event FeeBurnt(address bridger, uint256 fees);

    // ----------------------------------------
    //              Modifiers
    // ----------------------------------------

    /// @dev modifier checks whether the `ToucanCarbonOffsetsFactory` is paused
    /// Since TCO2 contracts are permissionless, pausing does not function individually
    modifier whenNotPaused() {
        address tco2Factory = IToucanContractRegistry(contractRegistry)
            .toucanCarbonOffsetsFactoryAddress(standardRegistry());
        bool _paused = IPausable(tco2Factory).paused();
        require(!_paused, 'Paused TCO2');
        _;
    }

    modifier onlyBridges() {
        address tco2Factory = IToucanContractRegistry(contractRegistry)
            .toucanCarbonOffsetsFactoryAddress(standardRegistry());
        bool isAllowed = IToucanCarbonOffsetsFactory(tco2Factory)
            .allowedBridges(msg.sender);
        require(isAllowed, 'Not allowed');
        _;
    }

    modifier onlyFactoryOwner() {
        address tco2Factory = IToucanContractRegistry(contractRegistry)
            .toucanCarbonOffsetsFactoryAddress(standardRegistry());
        address owner = IToucanCarbonOffsetsFactory(tco2Factory).owner();
        require(owner == msg.sender, 'Not factory owner');
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    // ----------------------------------------
    //      Bridge-related functions
    // ----------------------------------------

    /// @notice Burn TCO2 on behalf of a user. msg.sender does not require approval
    /// by the account for the burn to be successfull. This function is exposed so it
    /// can be utilized in cross-chain transfers of TCO2 where we want to burn the
    /// TCO2 in the source chain but not retire it.
    /// @param account The user for whom to burn TCO2
    /// @param amount The amount to burn.
    function bridgeBurn(address account, uint256 amount)
        external
        virtual
        whenNotPaused
        onlyBridges
    {
        _burn(account, amount);
    }

    /// @notice Mint TCO2 on behalf of a user. This function is exposed to
    /// be called by authorized message bridge systems and utilized for
    /// cross-chain transfers of TCO2 where we want to mint the TCO2 in the
    /// source chain.
    /// @param account The user for whom to mint TCO2
    /// @param amount The amount to mint.
    function bridgeMint(address account, uint256 amount)
        external
        virtual
        whenNotPaused
        onlyBridges
    {
        _mint(account, amount);
    }

    // ----------------------------------------
    //       Permissionless functions
    // ----------------------------------------

    /// @notice Token name getter overriden to return the a name based on the carbon project data
    //slither-disable-next-line external-function
    function name() public view virtual override returns (string memory) {
        string memory globalProjectId;
        string memory vintageName;
        (globalProjectId, vintageName) = getGlobalProjectVintageIdentifiers();
        return
            string(
                abi.encodePacked(
                    'Toucan Protocol: TCO2-',
                    globalProjectId,
                    '-',
                    vintageName
                )
            );
    }

    /// @notice Token symbol getter overriden to return the a symbol based on the carbon project data
    //slither-disable-next-line external-function
    function symbol() public view virtual override returns (string memory) {
        string memory globalProjectId;
        string memory vintageName;
        (globalProjectId, vintageName) = getGlobalProjectVintageIdentifiers();
        return
            string(
                abi.encodePacked('TCO2-', globalProjectId, '-', vintageName)
            );
    }

    /// @dev Helper function to retrieve data fragments for `name()` and `symbol()`
    function getGlobalProjectVintageIdentifiers()
        public
        view
        virtual
        returns (string memory, string memory)
    {
        ProjectData memory projectData;
        VintageData memory vintageData;
        (projectData, vintageData) = getAttributes();
        return (projectData.projectId, vintageData.name);
    }

    /// @dev Function to get corresponding attributes from the CarbonProjects
    function getAttributes()
        public
        view
        virtual
        returns (ProjectData memory, VintageData memory)
    {
        address pc = IToucanContractRegistry(contractRegistry)
            .carbonProjectsAddress();
        address vc = IToucanContractRegistry(contractRegistry)
            .carbonProjectVintagesAddress();

        VintageData memory vintageData = ICarbonProjectVintages(vc)
            .getProjectVintageDataByTokenId(projectVintageTokenId);
        ProjectData memory projectData = ICarbonProjects(pc)
            .getProjectDataByTokenId(vintageData.projectTokenId);

        return (projectData, vintageData);
    }

    /// @dev This function should be overrided by the specific implementation of TCO2
    /// @dev Function is called with `operator` as `msg.sender` in a reference implementation by OZ
    /// `from` is the previous owner, not necessarily the same as operator.
    /// The hook checks if NFT collection is whitelisted and next if attributes are matching this ERC20 contract
    /// each implementation of TCO2 must implement this function if needed
    function onERC721Received(
        address, /* operator */
        address from,
        uint256 tokenId,
        bytes calldata /* data */
    ) external virtual override whenNotPaused returns (bytes4) {}

    /// @dev Returns the remaining space in TCO2 contract before hitting the cap
    function getRemaining() public view returns (uint256 remaining) {
        uint256 cap = getDepositCap();
        remaining = cap - totalSupply();
    }

    /// @dev Returns the cap for TCO2s based on `totalVintageQuantity`
    /// Returns `~unlimited` if the value for the vintage is not set
    function getDepositCap() public view returns (uint256) {
        VintageData memory vintageData;
        (, vintageData) = getAttributes();
        uint64 totalVintageQuantity = vintageData.totalVintageQuantity;

        ///@dev multipliying tonnes with decimals
        uint256 cap = totalVintageQuantity * 10**decimals();

        /// @dev if totalVintageQuantity is not set (=0), remove cap
        if (cap == 0) return type(uint256).max;

        return cap;
    }

    /// @notice Burn TCO2 on behalf of a user. msg.sender needs to be approved by
    /// the account for the burn to be successfull. This function is exposed so it
    /// can be utilized to burn credits without retiring them (eg. dispose HFC-23).
    /// @param account The user for whom to burn TCO2
    /// @param amount The amount to burn
    function burnFrom(address account, uint256 amount)
        external
        virtual
        whenNotPaused
    {
        _spendAllowance(account, msg.sender, amount);
        _burn(account, amount);
    }

    /// @notice Retirement/Cancellation of TCO2 tokens (the actual offsetting),
    /// which results in the tokens being burnt
    function retire(uint256 amount)
        public
        virtual
        whenNotPaused
        returns (uint256 retirementEventId)
    {
        retirementEventId = _retire(msg.sender, amount);
    }

    /// @dev Allow for pools or third party contracts to retire for the user
    /// Requires approval
    function retireFrom(address account, uint256 amount)
        external
        virtual
        whenNotPaused
        returns (uint256 retirementEventId)
    {
        _spendAllowance(account, msg.sender, amount);
        retirementEventId = _retire(account, amount);
    }

    /// @dev Internal function for the burning of TCO2 tokens
    function _retire(address account, uint256 amount)
        internal
        virtual
        returns (uint256 retirementEventId)
    {
        _burn(account, amount);

        // Register retirement event in the certificates contract
        address certAddr = IToucanContractRegistry(contractRegistry)
            .retirementCertificatesAddress();
        retirementEventId = IRetirementCertificates(certAddr).registerEvent(
            account,
            projectVintageTokenId,
            amount,
            false
        );

        emit Retired(account, amount, retirementEventId);
    }

    /// @notice Retire an amount of TCO2s, register an retirement event
    /// then mint a certificate passing a single retirementEventId.
    /// @param retiringEntityString An identifiable string for the retiring entity, eg. their name.
    /// @param beneficiary The beneficiary to set in the NFT.
    /// @param beneficiaryString The beneficiaryString to set in the NFT.
    /// @param retirementMessage The retirementMessage to set in the NFT.
    /// @param amount The amount to retire and issue an NFT certificate for.
    function retireAndMintCertificate(
        string calldata retiringEntityString,
        address beneficiary,
        string calldata beneficiaryString,
        string calldata retirementMessage,
        uint256 amount
    ) external virtual whenNotPaused {
        // Retire provided amount
        uint256 retirementEventId = retire(amount);
        uint256[] memory retirementEventIds = new uint256[](1);
        retirementEventIds[0] = retirementEventId;

        // Mint certificate
        address certAddr = IToucanContractRegistry(contractRegistry)
            .retirementCertificatesAddress();
        //slither-disable-next-line unused-return
        IRetirementCertificates(certAddr).mintCertificate(
            msg.sender, /// @dev retiringEntity set automatically
            retiringEntityString,
            beneficiary,
            beneficiaryString,
            retirementMessage,
            retirementEventIds
        );
    }

    // -----------------------------
    //      Locked ERC20 safety
    // -----------------------------

    /// @dev Modifier to disallowing sending tokens to either the 0-address
    /// or this contract itself
    modifier validDestination(address to) {
        require(to != address(0x0));
        require(to != address(this));
        _;
    }

    function transfer(address recipient, uint256 amount)
        public
        virtual
        override
        validDestination(recipient)
        whenNotPaused
        returns (bool)
    {
        super.transfer(recipient, amount);
        return true;
    }

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    )
        public
        virtual
        override
        validDestination(recipient)
        whenNotPaused
        returns (bool)
    {
        super.transferFrom(sender, recipient, amount);
        return true;
    }

    /// @notice Return the name of the registry that this
    /// factory is enabling to tokenize, eg., verra
    /// @dev this must be overridden in the child contract
    function standardRegistry() public virtual returns (string memory) {}
}
