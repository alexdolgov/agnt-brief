//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "./SeMetis.sol";
import "./ERC20PermitPermissionedMint.sol";
import "./interface/IEMetisMinter.sol";
import "./interface/IL2ERC20Bridge.sol";
import "./interface/ICrossDomainEnabled.sol";
import "./interface/ICrossDomainMessenger.sol";
import "./interface/ISeMetis.sol";
import "./Base.sol";


/// @title eMetisMinter
/// @notice eMetisMinter is the contract that mints eMetis
contract EMetisMinter is IEMetisMinter, Base {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    event Minted(address indexed account, uint256 amount, bool deposit, address indexed inviter);

    /// @notice rewardDispatcher is the contract that dispatches rewards
    address public rewardDispatcher;

    /// @notice eMetis is the eMetis contract address
    address public eMetis;

    /// @notice seMetis is the seMetis contract address
    address public seMetis;

    /// @notice metis is the metis contract address
    address public metis;

    /// @notice bridge is the L2 bridge contract address
    address public bridge;

    /// @notice crossDomainMessenger is the L2 messenger contract address, to use the messenger, we need to add caller to the whitelist
    address public crossDomainMessenger;
    
    /// @notice DepositToL1Dealer is emitted when deposit to L1 dealer
    /// @param amount asset amount
    event DepositToL1Dealer(uint256 amount);

    /// @notice initialize the contract
    /// @param _config config contract address
    function initialize(address _config) public initializer {
        address[] memory _holdTokens = new address[](1);
        _holdTokens[0] = IConfig(_config).metis();
        __Base_init(_config, _holdTokens);
        rewardDispatcher = config.rewardDispatcher();
        eMetis = config.eMetis();
        seMetis = config.seMetis();
        metis = config.metis();
        bridge = config.bridge();
        crossDomainMessenger = ICrossDomainEnabled(bridge).messenger();

        /// ERC-4626 vaults that are empty or nearly empty are susceptible to a type of frontrunning attack known as a donation or inflation attack. This occurs when an attacker "donates" to the vault, artificially inflating the price of a share and putting deposits at risk of theft due to the resulting slippage.
        /// This issue can be mitigated by making an initial deposit of a significant amount of the asset into the vault upon deployment, making price manipulation impractical.
        /// In order to safeguard against this potential attack, we make an initial deposit into the seMetis vault.
        _mintAndDeposit(_msgSender(), INITIAL_DEPOSIT_AMOUNT);
    }

    /// @notice Mint eMetis and deposit to seMetis vault, user will get seMetis 
    /// @param account account to accept seMetis
    /// @param amount Metis amount
    /// @param deposit true if deposit to seMetis vault
    /// @param inviter the address of the inviter
    function mint(address account, uint256 amount, bool deposit, address inviter) public nonReentrant override {
        if (deposit) {
            _mintAndDeposit(account, amount);
        } else {
            _mint(account, amount);
        }

        if (inviter != address(0) && IERC721(config.inviterNFT()).balanceOf(inviter) == 0) {
            inviter = address(0);
        }

        emit Minted(account, amount, deposit, inviter);
    }

    /// @notice Mint eMetis from L1 as the reward
    /// @param amount Metis amount
    function mintFromL1(uint256 amount) external whenNotPaused nonReentrant override {
        require(amount > 0, "EMetisMinter: amount is zero");
        // make sure the caller is the crossDomainMessenger and is from l1Dealer
        require(_msgSender() == crossDomainMessenger, "EMetisMinter: caller is not the crossDomainMessenger");
        require(ICrossDomainMessenger(crossDomainMessenger).xDomainMessageSender() == config.l1Dealer(), "EMetisMinter: caller is not the l1Dealer");

        ERC20PermitPermissionedMint(eMetis).minter_mint(rewardDispatcher, amount);
    }

    /// @notice Transfer Metis to L1 Dealer through the bridge
    /// @param amount Metis amount
    function depositToL1Dealer(uint256 amount) external payable onlyBackend override {
        require(amount > 0, "EMetisMinter: amount is zero");
        if (IERC20Upgradeable(metis).allowance(address(this), bridge) < amount) {
            IERC20Upgradeable(metis).approve(bridge, type(uint256).max);
        }

        // there are 7 days delay through the bridge
        IL2ERC20Bridge(bridge).withdrawTo{value: msg.value}(metis, config.l1Dealer(), amount, 0, "");
        emit DepositToL1Dealer(amount);
    }

    function _mint(address account, uint256 amount) internal {
        require(amount > 0, "EMetisMinter: amount is zero");
        // user should ensure enough metis balance and allowance
        IERC20Upgradeable(metis).safeTransferFrom(_msgSender(), address(this), amount);
        ERC20PermitPermissionedMint(eMetis).minter_mint(account, amount);
    }

    /// @notice Mint eMetis and deposit to seMetis vault, user will get seMetis 
    /// @param account account to accept seMetis
    /// @param amount Metis amount
    function _mintAndDeposit(address account, uint256 amount) internal forUser {
        _mint(address(this), amount);
        ERC20Upgradeable(eMetis).approve(seMetis, amount);
        ISeMetis(seMetis).depositFromEMetisMinter(amount, account);
    }
}