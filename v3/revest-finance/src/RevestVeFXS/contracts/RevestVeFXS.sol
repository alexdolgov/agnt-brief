// SPDX-License-Identifier: GNU-GPL v3.0 or later

pragma solidity ^0.8.0;

import "./interfaces/IAddressRegistry.sol";
import "./interfaces/IOutputReceiverV3.sol";
import "./interfaces/ITokenVault.sol";
import "./interfaces/IRevest.sol";
import "./interfaces/IFNFTHandler.sol";
import "./interfaces/ILockManager.sol";
import "./interfaces/IRewardsHandler.sol";
import "./interfaces/IVotingEscrow.sol";
import "./interfaces/IFeeReporter.sol";
import "./interfaces/IRevestVeFXS.sol";

import "./VestedEscrowSmartWallet.sol";
import "./SmartWalletWhitelistV2.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/proxy/Clones.sol";

// Libraries
import "./lib/RevestHelper.sol";

/**
 * @title Revest FNFT for veFXS
 * @author RobAnon
 * @author Ekkila
 * @author Nikola
 */
contract RevestVeFXS is IRevestVeFXS, IOutputReceiverV3, Ownable, ERC165, IFeeReporter, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // Where to find the Revest address registry that contains info about what contracts live where
    address public addressRegistry;

    // Address of voting escrow contract
    address public immutable VOTING_ESCROW;

    // Token used for voting escrow
    address public immutable TOKEN;

    address public immutable REWARD_TOKEN;

    // Distributor for rewards address
    address[] public distributors;

    // Revest Admin Account
    address public adminWallet;

    // Vault address
    address public immutable VAULT;

    // Template address for VE wallets
    address public immutable TEMPLATE;

    // The file which tells our frontend how to visually represent such an FNFT
    string public METADATA = "https://revest.mypinata.cloud/ipfs/QmdBWbQ9AAfKQgxtz24J1ZhnzCs6PFTR99esvs6gEV1Pq2";

    // Constant used for approval
    uint256 private constant MAX_LOCKUP = 4 * 365 days;

    uint256 private constant PRECISION = 1000;

    // Performance fee
    uint256 private PERFORMANCE_FEE = 100; // 10%

    // Management fee
    uint256 private MANAGEMENT_FEE = 5; // 0.5%

    // Control variable to let all users utilize smart wallets for proxy execution
    bool public globalProxyEnabled;

    // Control variable to enable a given FNFT to utilize their smart wallet for proxy execution
    mapping(uint256 => bool) public proxyEnabled;

    // Mapping fnftId to lockId for each user
    mapping(uint256 => uint128) public lockId;

    // Initialize the contract with the needed valeus
    constructor(address _provider, address _vE, address _distributor, address _revestAdmin) {
        require(_provider != address(0), "Invalid provider address!");
        require(_vE != address(0), "Invalid voting escrow address!");
        require(_distributor != address(0), "Invalid distributor address!");
        require(_revestAdmin != address(0), "Invalid revest admin address!");
        addressRegistry = _provider;
        VOTING_ESCROW = _vE;
        TOKEN = IVotingEscrow(_vE).token();
        REWARD_TOKEN = IVotingEscrow(_vE).token();
        adminWallet = _revestAdmin;
        VAULT = IAddressRegistry(_provider).getTokenVault();
        distributors.push(_distributor);
        VestedEscrowSmartWallet wallet = new VestedEscrowSmartWallet(_vE);
        TEMPLATE = address(wallet);
    }

    modifier onlyVault() {
        require(msg.sender == VAULT, "Only Vault Access!");
        _;
    }

    modifier onlyRevestController() {
        require(msg.sender == IAddressRegistry(addressRegistry).getRevest(), "Unauthorized Access!");
        _;
    }

    modifier onlyTokenHolder(uint256 fnftId) {
        IAddressRegistry reg = IAddressRegistry(addressRegistry);
        require(IFNFTHandler(reg.getRevestFNFT()).getBalance(msg.sender, fnftId) > 0, "E064");
        _;
    }

    // Allows core Revest contracts to make sure this contract can do what is needed
    // Mandatory method
    function supportsInterface(bytes4 interfaceId) public view override(ERC165, IERC165) returns (bool) {
        return interfaceId == type(IOutputReceiver).interfaceId || interfaceId == type(IOutputReceiverV2).interfaceId
            || interfaceId == type(IOutputReceiverV3).interfaceId || super.supportsInterface(interfaceId);
    }

    // _________________________________________________________USER FUNCTION_________________________________________________________

    /**
     * @notice Locks the tokens for a certain period of time and mints a FNFT for the user
     * @param endTime Time ends for the lock
     * @param amountToLock Amount of tokens to lock
     */
    function lockTokens(uint256 endTime, uint256 amountToLock) external nonReentrant returns (uint256 fnftId) {
        //Taking management fee
        amountToLock = _claimFee(msg.sender, amountToLock);

        /// Mint FNFT
        fnftId = mintFNFT(endTime);

        // Lock tokens through smart wallet
        (address smartWallet, VestedEscrowSmartWallet wallet) = _createWallet(fnftId);

        // Transfer the tokens from the user to the smart wallet
        IERC20(TOKEN).safeTransferFrom(msg.sender, smartWallet, amountToLock);

        // We deposit our funds into the wallet
        (uint128 index,) = wallet.createLock(amountToLock, endTime, distributors[distributors.length - 1]);
        lockId[fnftId] = index;

        emit DepositERC20OutputReceiver(msg.sender, TOKEN, amountToLock, fnftId, abi.encode(smartWallet));
        emit DepositToken(msg.sender, fnftId, TOKEN, amountToLock, endTime);
    }

    /**
     * @notice Extends the lockup period for a certain FNFT
     * @param fnftId Current FNFT id to extend
     * @param expiration New expiration time
     */
    function handleTimelockExtensions(uint256 fnftId, uint256 expiration, address)
        external
        override
        onlyRevestController
    {
        require(expiration - block.timestamp <= MAX_LOCKUP, "Max lockup is 4 years");

        (, VestedEscrowSmartWallet wallet) = _getWallets(fnftId);
        wallet.increaseUnlockTime(expiration, lockId[fnftId], distributors[distributors.length - 1]);

        emit TimeLockExtension(fnftId, expiration);
    }

    /**
     * @notice Handles additional deposits to the smart wallet for a certain FNFT
     * @param fnftId Current FNFT id to deposit
     * @param amountToDeposit Extra amount tokens to deposit
     * @param caller Caller of the function
     */
    function handleAdditionalDeposit(uint256 fnftId, uint256 amountToDeposit, uint256, address caller)
        external
        override
        nonReentrant
        onlyRevestController
    {
        (address smartWallet, VestedEscrowSmartWallet wallet) = _getWallets(fnftId);

        amountToDeposit = _claimFee(caller, amountToDeposit);

        IERC20(TOKEN).safeTransferFrom(caller, smartWallet, amountToDeposit);
        wallet.increaseAmount(amountToDeposit, lockId[fnftId], distributors[distributors.length - 1]);

        emit DepositERC20OutputReceiver(caller, TOKEN, amountToDeposit, fnftId, abi.encode(smartWallet));
        emit DepositAdditionalToken(fnftId, TOKEN, amountToDeposit);
    }

    /**
     * @notice Claims the yield for a certain FNFT
     * @param fnftId Id of FNFT to earn yield on
     */
    function triggerOutputReceiverUpdate(uint256 fnftId, bytes memory) external override onlyTokenHolder(fnftId) {
        _claimAllRewards(msg.sender, fnftId);
    }

    /**
     * @notice Claimed yields and withdraw locked tokens
     * @param fnftId Id of FNFT to withdraw
     * @param owner Owner of the FNFT
     */
    function receiveRevestOutput(uint256 fnftId, address, address payable owner, uint256)
        external
        override
        onlyVault
        nonReentrant
    {
        (address smartWallet, VestedEscrowSmartWallet wallet) = _getWallets(fnftId);

        // Claim fee and distribute output
        _claimAllRewards(owner, fnftId);

        // Withdraw the fund
        wallet.withdraw(lockId[fnftId]);
        uint256 balance = IERC20(TOKEN).balanceOf(address(this));
        IERC20(TOKEN).safeTransfer(owner, balance);

        emit WithdrawERC20OutputReceiver(owner, TOKEN, balance, fnftId, abi.encode(smartWallet));
    }

    /**
     * @notice Allows you to proxy execute a function on the smart wallet, this does not include moving REWARD_TOKEN
     * @param fnftId Id of FNFT to withdraw
     * @param destination Address of the contract to call
     * @param data Data to send to the contract
     */
    function proxyExecute(uint256 fnftId, address destination, bytes memory data)
        external
        payable
        onlyTokenHolder(fnftId)
        returns (bytes memory dataOut)
    {
        require(globalProxyEnabled || proxyEnabled[fnftId], "Proxy access not enabled!");
        require(destination != REWARD_TOKEN, "Proxy call does not allow interaction with REWARD_TOKEN");
        for (uint256 i = 0; i < distributors.length; i++) {
            require(destination != distributors[i], "Proxy call does not allow interaction with DISTRIBUTOR");
        }
        (, VestedEscrowSmartWallet wallet) = _getWallets(fnftId);
        dataOut = wallet.proxyExecute{value: msg.value}(destination, data);
    }

    /**
     * @notice A function created to claim REWARD TOKENS in case of any left over tokens in smart wallet
     * @param fnftId Id of FNFT to withdraw
     * @param owner Owner of the FNFT
     */
    function claimRewards(uint256 fnftId, address owner) external onlyTokenHolder(fnftId) nonReentrant {
        _claimAllRewards(owner, fnftId);
    }

    /**
     * @notice A function for FNFT owner to checkpoint their positions on a distributor
     * @param fnftId Id of FNFT to withdraw
     */
    function checkpoint(uint256 fnftId, address distritbutor) external onlyTokenHolder(fnftId) nonReentrant {
        (, VestedEscrowSmartWallet wallet) = _getWallets(fnftId);
        wallet.checkpoint(distritbutor);
    }

    // _________________________________________________________ADMIN FUNCTION_________________________________________________________

    function setAddressRegistry(address addressRegistry_) external override onlyOwner {
        require(addressRegistry_ != address(0), "Error: Invalid address registry address!");
        addressRegistry = addressRegistry_;
    }

    function setRevestAdmin(address _admin) external onlyOwner {
        require(_admin != address(0), "Error: Invalid admin address!");
        adminWallet = _admin;
    }

    function setMetadata(string memory _meta) external onlyOwner {
        METADATA = _meta;
    }

    function setGlobalProxyEnabled(bool enable) external onlyOwner {
        globalProxyEnabled = enable;
    }

    function setProxyStatusForFNFT(uint256 fnftId, bool status) external onlyOwner {
        proxyEnabled[fnftId] = status;
    }

    function setPerformanceFee(uint256 fee) external onlyOwner {
        require(fee <= 1000, "Performance fee must be less than 100%");
        PERFORMANCE_FEE = fee;
    }

    function setManagementFee(uint256 fee) external onlyOwner {
        require(fee <= 1000, "Management fee must be less than 100%");
        MANAGEMENT_FEE = fee;
    }

    function addDistributor(address distributor) external onlyOwner {
        require(distributor != address(0), "Invalid distributor address!");
        distributors.push(distributor);
    }

    /// If funds are mistakenly sent to smart wallets, this will allow the owner to assist in rescue
    function rescueNativeFunds() external onlyOwner {
        payable(msg.sender).transfer(address(this).balance);
    }

    /// Under no circumstances should this contract ever contain ERC-20 tokens at the end of a transaction
    /// If it does, someone has mistakenly sent funds to the contract, and this function can rescue their tokens
    function rescueERC20(address token) external onlyOwner {
        uint256 amount = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransfer(msg.sender, amount);
    }

    /// View Functions
    function getCustomMetadata(uint256) external view override returns (string memory) {
        return METADATA;
    }

    // Will give balance in veFXS
    function getValue(uint256 fnftId) public view override returns (uint256) {
        return IVotingEscrow(VOTING_ESCROW).balanceOf(
            Clones.predictDeterministicAddress(TEMPLATE, keccak256(abi.encode(TOKEN, fnftId)))
        );
    }

    // Must always be in native token
    function getAsset(uint256) external view override returns (address) {
        return VOTING_ESCROW;
    }

    function getOutputDisplayValues(uint256 fnftId) external view override returns (bytes memory displayData) {
        //calculate yield output for certain FNFT
        uint256 yield = IYieldDistributor(distributors[distributors.length - 1]).earned(
            Clones.predictDeterministicAddress(TEMPLATE, keccak256(abi.encode(TOKEN, fnftId)))
        );

        bool hasRewards = yield > 0;
        string memory rewardsDesc;
        if (hasRewards) {
            string memory par1 = string(abi.encodePacked(RevestHelper.getName(REWARD_TOKEN), ": "));
            string memory par2 = string(
                abi.encodePacked(
                    RevestHelper.amountToDecimal(yield, REWARD_TOKEN),
                    " [",
                    RevestHelper.getTicker(REWARD_TOKEN),
                    "] Tokens Available"
                )
            );
            rewardsDesc = string(abi.encodePacked(par1, par2));
        }

        address smartWallet = getAddressForFNFT(fnftId);
        uint256 maxExtension = (block.timestamp / (1 weeks)) * (1 weeks) + MAX_LOCKUP;
        (int128 lockedBalance,) = IVotingEscrow(VOTING_ESCROW).lockedByIndex(smartWallet, lockId[fnftId]);
        displayData = abi.encode(smartWallet, rewardsDesc, hasRewards, maxExtension, TOKEN, lockedBalance);
    }

    function getAddressRegistry() external view override returns (address) {
        return addressRegistry;
    }

    function getFlatWeiFee(address) external view override returns (uint256) {
        return PERFORMANCE_FEE;
    }

    function getERC20Fee(address) external view override returns (uint256) {
        return MANAGEMENT_FEE;
    }

    function getAddressForFNFT(uint256 fnftId) public view returns (address smartWallet) {
        smartWallet = Clones.predictDeterministicAddress(TEMPLATE, keccak256(abi.encode(TOKEN, fnftId)));
    }

    // _________________________________________________________HELPER FUNCTIONS_______________________________________________________

    function mintFNFT(uint256 endTime) private returns (uint256 fnftId) {
        IRevest.FNFTConfig memory fnftConfig;

        // Want FNFT to be extendable and support multiple deposits
        fnftConfig.isMulti = true;

        fnftConfig.maturityExtension = true;

        // Will result in the asset being sent back to this contract upon withdrawal
        // Results solely in a callback
        fnftConfig.pipeToContract = address(this);

        // Set these two arrays according to Revest specifications to say
        // Who gets these FNFTs and how many copies of them we should create
        address[] memory recipients = new address[](1);
        recipients[0] = _msgSender();

        uint256[] memory quantities = new uint256[](1);
        quantities[0] = 1;

        address revest = IAddressRegistry(addressRegistry).getRevest();

        fnftId = IRevest(revest).mintTimeLock(endTime, recipients, quantities, fnftConfig);
    }

    function _getWallets(uint256 fnftId) private view returns (address smartWallet, VestedEscrowSmartWallet wallet) {
        smartWallet = Clones.predictDeterministicAddress(TEMPLATE, keccak256(abi.encode(TOKEN, fnftId)));
        wallet = VestedEscrowSmartWallet(smartWallet);
    }

    function _createWallet(uint256 fnftId) private returns (address smartWallet, VestedEscrowSmartWallet wallet) {
        smartWallet = Clones.cloneDeterministic(TEMPLATE, keccak256(abi.encode(TOKEN, fnftId)));
        wallet = VestedEscrowSmartWallet(smartWallet);
    }

    function _claimAllRewards(address owner, uint256 fnftId) private {
        (, VestedEscrowSmartWallet wallet) = _getWallets(fnftId);
        for (uint256 i = 0; i <= distributors.length - 1; i++) {
            wallet.claimRewards(owner, adminWallet, PERFORMANCE_FEE, distributors[i]);
        }
    }

    function _claimFee(address owner, uint256 amountToLock) private returns (uint256 amountAfterFee) {
        uint256 fxsFee = (amountToLock * MANAGEMENT_FEE) / PRECISION;
        if (fxsFee > 0) {
            IERC20(TOKEN).safeTransferFrom(owner, adminWallet, fxsFee);
            amountAfterFee = amountToLock - fxsFee;
            emit FeeCollection(address(TOKEN), fxsFee);
        }
    }

    // _________________________________________________________NOT APPLICABLE_________________________________________________________
    function handleSplitOperation(uint256 fnftId, uint256[] memory proportions, uint256 quantity, address caller)
        external
        override
    {
        revert("Not applicable!");
    }

    function handleFNFTRemaps(uint256, uint256[] memory, address, bool) external pure override {
        revert("Not applicable!");
    }

    function receiveSecondaryCallback(
        uint256 fnftId,
        address payable owner,
        uint256 quantity,
        IRevest.FNFTConfig memory config,
        bytes memory args
    ) external payable override {
        require(false, "Not applicable!");
    }
}
