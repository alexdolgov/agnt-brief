// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

import {ERC1155Upgradeable} from "@openzeppelin-upgradeable/token/ERC1155/ERC1155Upgradeable.sol";
import {ERC1155HolderUpgradeable} from "@openzeppelin-upgradeable/token/ERC1155/utils/ERC1155HolderUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import {Initializable} from "@openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {EIP712Upgradeable} from "@openzeppelin-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import {IERC1155} from "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {IPlayer} from "../interfaces/IPlayer.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IFeeManager} from "../interfaces/IFeeManager.sol";
import {IFDFPair} from "../interfaces/IFDFPair.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

/**
 * @title Player token contract.
 */
contract Player is Initializable, ERC1155Upgradeable, ERC1155HolderUpgradeable, AccessControlUpgradeable, UUPSUpgradeable, EIP712Upgradeable, IPlayer {  

    using SafeERC20 for IERC20;

    //Roles.
    bytes32 public constant GOVERNOR_ROLE = keccak256("GOVERNOR_ROLE");
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant SUPPLY_MANAGER = keccak256("SUPPLY_MANAGER");

    //EIP-712 TypeHash for selling authorisation.
    bytes32 public constant SELL_TYPEHASH = keccak256(
        "SellTokens(address from,uint256[] playerTokenIds,uint256[] amounts,uint256 minCurrencyToReceive,uint256 deadline,uint256 nonce)"
    );
    
    //Contracts.
    address public playerPack; //PlayerPack CA.
    address public fdfPair; //DEX CA.
    address public developmentPlayers; //DevelopmentPlayers CA.
    IERC20 public currencyToken; // Reference to ERC20 currency
    IFeeManager public feeManager; // FeeManager contract.

    //Transaction signer addresses from app.
    address[] public txSigners;

    //Base URI for player metadata.
    string public baseURI;

    //Player info.
    struct PlayerInfo {
        bool exists; //Does the player exist
        bool isBuyable; //Can this player be bought
        bool isSellable; //Can this player be sold
        bool isInActiveList; //Is this player in the activePlayerIds array
    }

    //Tracks all of the FDF players. playerId => PlayerInfo
    mapping(uint256 => PlayerInfo) public players;

    //Tracks all of the active player ids.
    uint256[] private activePlayerIds;

    //Fractional amount of each player.
    uint256 private mintAmount; //25M tokens.

    //Mapping to track whitelisted addresses that can send/receive tokens.
    mapping(address => bool) public whitelistedAddresses;

    //Used nonces for replay protection (UUID).
    mapping(address => uint256) public usedNonces;

    //Minimum thresholds for player creation
    uint256 public minPlayerSharesDeposit; // Minimum player token shares to deposit
    uint256 public minCurrencyDepositForPlayer; // Minimum currency deposit per player

    // Storage gap for future upgrades
    uint256[50] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * Initialize the Player contract.
     * @param _baseURI The base URI for the player metadata.
     * @param _governorAddress Address that will receive the GOVERNOR_ROLE, ADMIN_ROLE and MINTER_ROLE.
     */
    function initialize(string memory _baseURI, address _governorAddress) external initializer {
        if(bytes(_baseURI).length > 0) revert BaseURIMustBeEmpty();
        if(_governorAddress == address(0)) revert ZeroAddress();
        
        __ERC1155_init(_baseURI);
        __ERC1155Holder_init();
        __AccessControl_init();
        __UUPSUpgradeable_init();
        __EIP712_init("FDF Player", "1");
        
        // Initialize state variables that had default values
        mintAmount = 25_000_000 * 10**18; //25M tokens.
        baseURI = _baseURI;
        
        // Initialize minimum thresholds
        minPlayerSharesDeposit = 1_600_000 * 10**18; // 1.6 million shares
        minCurrencyDepositForPlayer = 20_000 * 10**6; // 20k currency (USDC has 6 decimals)
        
        _setRoleAdmin(GOVERNOR_ROLE, GOVERNOR_ROLE);
        _setRoleAdmin(ADMIN_ROLE, GOVERNOR_ROLE);
        _setRoleAdmin(MINTER_ROLE, GOVERNOR_ROLE);
        _setRoleAdmin(SUPPLY_MANAGER, GOVERNOR_ROLE);
        
        _grantRole(GOVERNOR_ROLE, _governorAddress);
        _grantRole(ADMIN_ROLE, _governorAddress);      
        _grantRole(MINTER_ROLE, _governorAddress);
        _grantRole(SUPPLY_MANAGER, _governorAddress);
    }

    /**
     * Create/mint multiple players at once and transfer them to the DEX.
     * @param _playerIds The playerIds to create.
     * @param _amounts Array of token amounts to transfer to DEX.
     * @param _maxCurrencyDeposit Array of currency reserve for each playerId.
     * @param _deadline Timestamp after which this transaction will be reverted.
     */
    function createPlayers(
        uint256[] calldata _playerIds, 
        uint256[] calldata _amounts, 
        uint256[] calldata _maxCurrencyDeposit, 
        uint256 _deadline
    ) external onlyRole(MINTER_ROLE) {
        if(_playerIds.length == 0) revert PlayerIdsCannotBeEmpty();
        if (_playerIds.length != _amounts.length || _playerIds.length != _maxCurrencyDeposit.length) revert ArrayLengthMismatch();

        //1: Create and activate all players.
        for (uint256 i = 0; i < _playerIds.length;) {
            if(_amounts[i] < minPlayerSharesDeposit) revert InvalidAmount();
            if(_maxCurrencyDeposit[i] < minCurrencyDepositForPlayer) revert InvalidCurrencyDeposit();
            if(players[_playerIds[i]].exists) revert PlayerAlreadyExist();

            _createAndActivatePlayer(_playerIds[i]);
            
            unchecked { i++; }
        }

        //2: Transfer to DEX.
        _transferToExchange(_playerIds, _amounts, _maxCurrencyDeposit, _deadline);
    }

    /**
     * Create a player.
     * @param _playerId The playerId of the player.
     */
    function _createAndActivatePlayer(uint256 _playerId) internal {
        //Mint the player to the contract.
        _mint(address(this), _playerId, mintAmount, "");

        players[_playerId] = PlayerInfo({
            exists: true,
            isBuyable: false, //Untradeable on mint.
            isSellable: false, //Untradeable on mint.
            isInActiveList: true
        });
        
        activePlayerIds.push(_playerId);
        feeManager.activateDefaultFeeTier(_playerId); //Add token to default tier.

        emit PlayerActivated(_playerId);
    }

    /**
     * Transfer tokens to the FDFPair contract.
     * @param _playerIds Array of playerIds.
     * @param _amounts Array of token amounts.
     * @param _maxCurrencyDeposit Array of currency reserve for each playerId provided in _playerIds.
     * @param _deadline Timestamp after which this transaction will be reverted.
     */
    function _transferToExchange(uint256[] calldata _playerIds, uint256[] calldata _amounts, uint256[] calldata _maxCurrencyDeposit, uint256 _deadline) internal {
        if (_playerIds.length == 0) revert PlayerIdsCannotBeEmpty();
        if (_playerIds.length != _amounts.length || _playerIds.length != _maxCurrencyDeposit.length) revert ArrayLengthMismatch();
        if (_deadline < block.timestamp) revert InvalidDeadline();

        //Encode the data for addLiquidity.
        bytes memory data = abi.encode(
            IFDFPair(fdfPair).ADDLIQUIDITY_SIG(),
            IFDFPair.AddLiquidityObj({
                maxCurrencyToDeposit: _maxCurrencyDeposit,
                deadline: _deadline
            })
        );

        //Calculate the total amount of currency to deposit.
        uint256 totalCurrencyDeposit = 0;
        for (uint256 i = 0; i < _maxCurrencyDeposit.length; i++) {
            totalCurrencyDeposit += _maxCurrencyDeposit[i];
        }

        //Send currency to the Player contract for this funding.
        currencyToken.safeTransferFrom(msg.sender, address(this), totalCurrencyDeposit);
                
        //Transfer tokens to the FDFPair contract.
        this.safeBatchTransferFrom(address(this), fdfPair, _playerIds, _amounts, data);

        emit PlayerSentToExchange(_playerIds, _amounts, _maxCurrencyDeposit);
    }

    /**
     * @notice Returns supply of shares for one or more players.
     * @dev Only callable by addresses with the SUPPLY_MANAGER role.
     * @param _playerIds Array of player IDs.
     * @param _shares Array of shares to allocate per player.
     */
    function returnSupply(uint256[] calldata _playerIds, uint256[] calldata _shares) external onlyRole(SUPPLY_MANAGER) {
        if(_playerIds.length == 0) revert PlayerIdsCannotBeEmpty();
        if(_playerIds.length != _shares.length) revert ArrayLengthMismatch();

        for (uint256 i = 0; i < _playerIds.length;) {
            if(!players[_playerIds[i]].exists) revert PlayerDoesNotExist();
            unchecked { i++; }
        }

        //Transfer tokens to the Player contract. Skips override function.
        _safeBatchTransferFrom(msg.sender, address(this), _playerIds, _shares, "");

        emit SupplyReturned(_playerIds, _shares);
    }

    /**
     * @notice pulls supply of shares for one or more players
     * @dev Only callable by addresses with the SUPPLY_MANAGER role
     * @param _playerIds Array of player IDs
     * @param _shares Array of shares to allocate per player
     */
    function requestSupply(uint256[] calldata _playerIds, uint256[] calldata _shares) external onlyRole(SUPPLY_MANAGER) {
        if(_playerIds.length == 0) revert PlayerIdsCannotBeEmpty();
        if(_playerIds.length != _shares.length) revert ArrayLengthMismatch();

        for (uint256 i = 0; i < _playerIds.length;) {
            if(!players[_playerIds[i]].exists) revert PlayerDoesNotExist();
            unchecked { i++; }
        }

        //Transfer tokens to the fetcher wallet. Skips override function.
        _safeBatchTransferFrom(address(this), msg.sender, _playerIds, _shares, "");

        emit SupplyPulled(_playerIds, _shares);
    }

    /**
     * Bulk enable trading (buying and selling) for a list of players.
     * @param _playerIds Array of playerIds.
     */
    function enableForTrading(uint256[] calldata _playerIds) external onlyRole(GOVERNOR_ROLE) {
        if(_playerIds.length == 0) revert PlayerIdsCannotBeEmpty();
        
        for (uint256 i = 0; i < _playerIds.length;) {
            if(!players[_playerIds[i]].exists) revert PlayerDoesNotExist();
            if(players[_playerIds[i]].isBuyable) revert PlayerAlreadyBuyable();
            if(players[_playerIds[i]].isSellable) revert PlayerAlreadySellable();

            players[_playerIds[i]].isBuyable = true;
            players[_playerIds[i]].isSellable = true;

            emit PlayerTradingEnabled(_playerIds[i]);
            unchecked { i++; }
        }
    }

    /**
     * Enable buying for a player.
     * @param _playerId The playerId of the player.
     */
    function enableBuying(uint256 _playerId) external onlyRole(GOVERNOR_ROLE) {
        if(_playerId == 0) revert PlayerIdCannotBeZero();
        if(!players[_playerId].exists) revert PlayerDoesNotExist();
        if(players[_playerId].isBuyable) revert PlayerAlreadyBuyable();

        players[_playerId].isBuyable = true;

        emit PlayerBuyingEnabled(_playerId);
    }

    /**
     * Enable selling for a player.
     * @param _playerId The playerId of the player.
     */
    function enableSelling(uint256 _playerId) external onlyRole(GOVERNOR_ROLE) {
        if(_playerId == 0) revert PlayerIdCannotBeZero();
        if(!players[_playerId].exists) revert PlayerDoesNotExist();
        if(players[_playerId].isSellable) revert PlayerAlreadySellable();
    
        players[_playerId].isSellable = true;

        emit PlayerSellingEnabled(_playerId);
    }

    /**
     * Reactivate a player that has been deactivated (retired).
     * @param _playerId The playerId of the player.
     */
    function reactivatePlayer(uint256 _playerId) external onlyRole(GOVERNOR_ROLE) {
        if(_playerId == 0) revert PlayerIdCannotBeZero();
        if(!players[_playerId].exists) revert PlayerDoesNotExist();
        if(players[_playerId].isInActiveList) revert PlayerAlreadyActive();

        //Add to activePlayerIds.
        activePlayerIds.push(_playerId);
        players[_playerId].isInActiveList = true;        

        emit PlayerReactivated(_playerId);
    }

    /**
     * Disable buying for a player.
     * @param _playerId The playerId of the player.
     */
    function disableBuying(uint256 _playerId) external onlyRole(GOVERNOR_ROLE) {
        if(_playerId == 0) revert PlayerIdCannotBeZero();
        if(!players[_playerId].exists) revert PlayerDoesNotExist();
        if(!players[_playerId].isBuyable) revert PlayerAlreadyNotBuyable();

        players[_playerId].isBuyable = false;

        emit PlayerBuyingDisabled(_playerId);
    }

    /**
     * Disable selling for a player.
     * @param _playerId The playerId of the player.
     */
    function disableSelling(uint256 _playerId) external onlyRole(GOVERNOR_ROLE) {
        if(_playerId == 0) revert PlayerIdCannotBeZero();
        if(!players[_playerId].exists) revert PlayerDoesNotExist();
        if(!players[_playerId].isSellable) revert PlayerAlreadyNotSellable();

        players[_playerId].isSellable = false;

        emit PlayerSellingDisabled(_playerId);
    }
    
    /**
     * Deactivate a player.
     * @param _playerId The playerId of the player.
     */
    function deactivatePlayer(uint256 _playerId) external onlyRole(GOVERNOR_ROLE) {
        if(_playerId == 0) revert PlayerIdCannotBeZero();
        if(!players[_playerId].exists) revert PlayerDoesNotExist();
        if(!players[_playerId].isInActiveList) revert PlayerAlreadyDeactivated();

        for (uint256 i = 0; i < activePlayerIds.length;) {
            if (activePlayerIds[i] == _playerId) {
                activePlayerIds[i] = activePlayerIds[activePlayerIds.length - 1];
                activePlayerIds.pop();
                break;
            }
            unchecked { i++; }
        }

        players[_playerId].isInActiveList = false;

        emit PlayerDeactivated(_playerId);
    }

    /**
     * Functions for prevention of direct contract calls/OTC trades.
     */

    /**
     * Authorised sell function that requires signature verification.
     * This is the ONLY way users can sell tokens to the DEX.
     * @param _playerTokenIds Array of token IDs to sell.
     * @param _amounts Array of amounts to sell.
     * @param _minCurrencyToReceive Minimum currency to receive from the sale.
     * @param _deadline Deadline after which signature expires.
     * @param _signature Signature from the game backend authorising this sale.
     * @param _nonce Nonce for replay protection.
     */
    function sellTokens(uint256[] calldata _playerTokenIds, uint256[] calldata _amounts, 
        uint256 _minCurrencyToReceive, uint256 _deadline, bytes calldata _signature, uint256 _nonce) external {
        if (_playerTokenIds.length == 0) revert PlayerIdsCannotBeEmpty();
        if (_playerTokenIds.length != _amounts.length) revert ArrayLengthMismatch();
        if (block.timestamp > _deadline) revert InvalidDeadline();
        if (_nonce  <= usedNonces[msg.sender]) revert InvalidNonce();

        //Check if all players are active.
        for (uint256 i = 0; i < _playerTokenIds.length;) {
            if (!isSellable(_playerTokenIds[i])) revert PlayerNotSellable();
            unchecked { i++; }
        }
        
        //Create EIP-712 structured hash for sell operation.
        bytes32 structHash = keccak256(abi.encode(
            SELL_TYPEHASH, 
            msg.sender, 
            keccak256(abi.encodePacked(_playerTokenIds)), 
            keccak256(abi.encodePacked(_amounts)), 
            _minCurrencyToReceive,
             _deadline, 
             _nonce));
                
        //Verify signature was created by one of the txSigners.
        address recoveredSigner = ECDSA.recover(keccak256(abi.encodePacked("\x19\x01", _domainSeparatorV4(), structHash)), _signature);
        bool validSigner = false;
        for (uint256 i = 0; i < txSigners.length;) {
            if (recoveredSigner == txSigners[i]) {
                validSigner = true;
                break;
            }
            unchecked { i++; }
        }
        if (!validSigner) revert InvalidSignature();
        
        //Encode the sell data for FDFPair.
        bytes memory sellData = abi.encode(IFDFPair(fdfPair).SELLTOKENS_SIG(), IFDFPair.SellTokensObj({
            minCurrencyToReceive: _minCurrencyToReceive, deadline: _deadline, recipient: msg.sender}));
        
        //Perform the transfer to DEX (this will trigger the sale).
        _safeBatchTransferFrom(msg.sender, fdfPair, _playerTokenIds, _amounts, sellData);
        
        //Updated latest used nonce for user.
        usedNonces[msg.sender] = _nonce;
        
        emit AuthorisedSellTokens(msg.sender, _playerTokenIds, _amounts, _minCurrencyToReceive);
    }

    /**
     * @dev Override safeBatchTransferFrom to prevent OTC trades.
     * Allows: Only whitelisted contracts can call this function.
     * Blocks: Direct user-to-user transfers.
     */
    function safeBatchTransferFrom(address from, address to, uint256[] memory ids, 
        uint256[] memory amounts, bytes memory data) public override(ERC1155Upgradeable, IERC1155) {
        //Only allow if 'from' address is whitelisted (contracts like DEX, PlayerPack, etc.)
        if (!whitelistedAddresses[from]) {
            revert UnauthorisedTransfer();
        }

        super.safeBatchTransferFrom(from, to, ids, amounts, data);

        emit PlayerBatchTransfer(from, to, ids, amounts);
    }

    /**
     * @dev Override safeTransferFrom to prevent OTC trades.
     * Allows: Only whitelisted contracts can call this function.
     * Blocks: Direct user-to-user transfers.
     */
    function safeTransferFrom(address from, address to, uint256 id, uint256 amount, bytes memory data) public override(ERC1155Upgradeable, IERC1155) {
        //Only allow if 'from' address is whitelisted (contracts like DEX, PlayerPack, etc.)
        if (!whitelistedAddresses[from]) {
            revert UnauthorisedTransfer();
        }

        super.safeTransferFrom(from, to, id, amount, data);

        emit PlayerTransfer(from, to, id, amount);
    }

    /**
     * Admin.
     */

    /**
     * @notice Reset the nonce for a user.
     * @param _user The user to reset the nonce for.
     * @param _newNonce The new nonce to set.
     */
    function resetUserNonce(address _user, uint256 _newNonce) external onlyRole(GOVERNOR_ROLE) {
        if(_user == address(0)) revert ZeroAddress();

        usedNonces[_user] = _newNonce;

        emit NonceReset(_user, _newNonce);
    }

    /**
     * Checks.
     */

    /**
     * Check if a player exists in the pool.
     * @param _playerId playerId of the player.
     * @return True if the player exists in the pool, false otherwise.
     */
    function existsInPool(uint256 _playerId) public view returns (bool) {
        if(_playerId == 0) revert PlayerIdCannotBeZero();

        return players[_playerId].exists;
    }

    /**
     * Check if a player is buyable.
     * @param _playerId playerId of the player.
     * @return True if the player is buyable, false otherwise.
     */
    function isBuyable(uint256 _playerId) public view returns (bool) {
        if(_playerId == 0) revert PlayerIdCannotBeZero();
        if(!players[_playerId].exists) revert PlayerDoesNotExist();

        return players[_playerId].isBuyable;
    }

    /**
     * Check if a player is sellable.
     * @param _playerId playerId of the player.
     * @return True if the player is sellable, false otherwise.
     */
    function isSellable(uint256 _playerId) public view returns (bool) {
        if(_playerId == 0) revert PlayerIdCannotBeZero();
        if(!players[_playerId].exists) revert PlayerDoesNotExist();

        return players[_playerId].isSellable;
    }

    /**
     * Check if a player is active (both buyable and sellable).
     * @param _playerId playerId of the player.
     * @return True if the player is active, false otherwise.
     */
    function isActive(uint256 _playerId) public view returns (bool) {
        if(_playerId == 0) revert PlayerIdCannotBeZero();
        if(!players[_playerId].exists) revert PlayerDoesNotExist();

        return players[_playerId].isInActiveList;
    }

    /**
     * Getters.
     */
    /**
     * Get the current nonce for a user.
     * @param _user The user to get the nonce for.
     * @return The current nonce for the user.
     */
    function getCurrentNonce(address _user) external view returns (uint256) {
        if(_user == address(0)) revert ZeroAddress();

        return usedNonces[_user];
    }

    /**
     * Get the number of active players.
     * @return The number of active players.
     */
    function getActivePlayerCount() external view returns (uint256) {
        return activePlayerIds.length;
    }

    /**
     * Get the active playerId by index.
     * @param _index The index of the active player.
     * @return The active playerId.
     */
    function getActivePlayerByIndex(uint256 _index) external view returns (uint256) {
        if(_index >= activePlayerIds.length) revert PlayerIndexOutOfBounds();

        return activePlayerIds[_index];
    }

    /**
     * Get the active player ids.
     * @return The active player ids.
     */
    function getActivePlayerIds() external view returns (uint256[] memory) {
        return activePlayerIds;
    }

    /**
     * Get the minimum player shares deposit threshold.
     * @return The minimum player shares deposit.
     */
    function getMinPlayerSharesDeposit() external view returns (uint256) {
        return minPlayerSharesDeposit;
    }

    /**
     * Get the minimum currency deposit per player threshold.
     * @return The minimum currency deposit per player.
     */
    function getMinCurrencyDepositForPlayer() external view returns (uint256) {
        return minCurrencyDepositForPlayer;
    }

    /**
     * Get the txSigners.
     * @return The txSigners.
     */
    function getTxSigners() external view returns (address[] memory) {
        return txSigners;
    }

    /**
     * Setters.
     */

    /**
     * Add or remove an address from the whitelist.
     * @param _account The address to whitelist/unwhitelist.
     * @param _whitelisted True to whitelist, false to remove from whitelist.
     */
    function setWhitelistedAddress(address _account, bool _whitelisted) external onlyRole(GOVERNOR_ROLE) {
        if (_account == address(0)) revert ZeroAddress();
        
        whitelistedAddresses[_account] = _whitelisted;
        emit AddressWhitelisted(_account, _whitelisted);
    }

    /**
     * Add a new txSigner address for signature verification.
     * @param _newTxSigner the new txSigner address.
     */
    function addTxSigner(address _newTxSigner) external onlyRole(GOVERNOR_ROLE) {
        if (_newTxSigner == address(0)) revert ZeroAddress();

        //Check if the txSigner is already in the array.
        for (uint256 i = 0; i < txSigners.length;) {
            if (txSigners[i] == _newTxSigner) revert TxSignerAlreadyExists();
            unchecked { i++; }
        }

        txSigners.push(_newTxSigner);
        emit TxSignerAdded(_newTxSigner);
    }

    /**
     * Remove a txSigner address for signature verification.
     * @param _txSigner the txSigner address to remove.
     */
    function removeTxSigner(address _txSigner) external onlyRole(GOVERNOR_ROLE) {
        if (_txSigner == address(0)) revert ZeroAddress();
        if (txSigners.length == 1) revert TxSignerCannotBeRemoved();

        for (uint256 i = 0; i < txSigners.length;) {
            if (txSigners[i] == _txSigner) {
                txSigners[i] = txSigners[txSigners.length - 1];
                txSigners.pop();
                break;
            }

            if (i == txSigners.length - 1) revert TxSignerNotFound();

            unchecked { i++; }
        }

        emit TxSignerRemoved(_txSigner);
    }

    /**
     * Sets the minimum player shares deposit threshold
     * @param _minPlayerSharesDeposit the new minimum player shares deposit
     */
    function setMinPlayerSharesDeposit(uint256 _minPlayerSharesDeposit) external onlyRole(GOVERNOR_ROLE) {
        if (_minPlayerSharesDeposit == 0) revert InvalidAmount();

        minPlayerSharesDeposit = _minPlayerSharesDeposit;
        emit MinPlayerSharesDepositChanged(_minPlayerSharesDeposit);
    }

    /**
     * Sets the minimum currency deposit per player threshold
     * @param _minCurrencyDepositForPlayer the new minimum currency deposit per player
     */
    function setMinCurrencyDepositForPlayer(uint256 _minCurrencyDepositForPlayer) external onlyRole(GOVERNOR_ROLE) {
        if (_minCurrencyDepositForPlayer == 0) revert InvalidCurrencyDeposit();

        minCurrencyDepositForPlayer = _minCurrencyDepositForPlayer;
        emit MinCurrencyDepositForPlayerChanged(_minCurrencyDepositForPlayer);
    }

    /**
     * @notice Allow the PlayerPack contract to transfer tokens out of the pool.
     * @param _playerPack The PlayerPack contract.
     * @param _fdfPair The FDF Pair contract.
     * @param _currency The currency token contract.
     * @param _packSaleReveal The PackSaleReveal contract.
     * @param _developmentPlayers The DevelopmentPlayers contract.
     * @param _packsDistributor The PacksDistributor address.
     * @param _feeManager The FeeManager contract.
     */
    function setApprovals(address _playerPack, address _fdfPair, address _currency, address _packSaleReveal, address _developmentPlayers, address _packsDistributor, address _feeManager) external onlyRole(GOVERNOR_ROLE) {
        if (_playerPack == address(0) || _fdfPair == address(0) || _currency == address(0) || _packSaleReveal == address(0) || _developmentPlayers == address(0) || _packsDistributor == address(0) || _feeManager == address(0)) revert ZeroAddress();
        
        // If there's an existing PlayerPack, revoke.
        if (playerPack != address(0)) {
            this.setApprovalForAll(playerPack, false);
            whitelistedAddresses[playerPack] = false;
            emit ApprovalSet(playerPack, false);
            emit AddressWhitelisted(playerPack, false);
        }

        // If there's an existing DevelopmentPlayers, revoke.
        if (developmentPlayers != address(0)) {
            this.setApprovalForAll(developmentPlayers, false);
            whitelistedAddresses[developmentPlayers] = false;
            emit ApprovalSet(developmentPlayers, false);
            emit AddressWhitelisted(developmentPlayers, false);
        }

        // If there's an existing FDFPair, revoke.
        if (fdfPair != address(0)) {
            whitelistedAddresses[fdfPair] = false;
            emit AddressWhitelisted(fdfPair, false);
        }
        
        playerPack = _playerPack;
        developmentPlayers = _developmentPlayers;
        fdfPair = _fdfPair;
        currencyToken = IERC20(_currency);
        feeManager = IFeeManager(_feeManager);
     
        // Approve contracts to transfer tokens.
        this.setApprovalForAll(_playerPack, true);
        this.setApprovalForAll(_fdfPair, true);
        this.setApprovalForAll(_packSaleReveal, true);
        this.setApprovalForAll(_developmentPlayers, true);

        // Whitelist all contracts
        whitelistedAddresses[_playerPack] = true;
        whitelistedAddresses[_fdfPair] = true;
        whitelistedAddresses[_packSaleReveal] = true;
        whitelistedAddresses[_developmentPlayers] = true;
        whitelistedAddresses[address(this)] = true;

        currencyToken.forceApprove(_fdfPair, type(uint256).max);
        
        emit PlayerPackSet(_playerPack);
        emit ApprovalSet(_fdfPair, true);
        emit ApprovalSet(_playerPack, true);
        emit ApprovalSet(_packSaleReveal, true);
        emit ApprovalSet(_developmentPlayers, true);
        emit ApprovalSet(_packsDistributor, true);
        
        // Emit whitelist events
        emit AddressWhitelisted(_playerPack, true);
        emit AddressWhitelisted(_fdfPair, true);
        emit AddressWhitelisted(_packSaleReveal, true);
        emit AddressWhitelisted(_developmentPlayers, true);
        emit AddressWhitelisted(_packsDistributor, true);
        emit AddressWhitelisted(address(this), true);
    }

    /**
     * @notice Grant the SUPPLY_MANAGER role to an address.
     * @param _address The address to grant the SUPPLY_MANAGER role to.
     */
    function grantSupplyManagerRole(address _address) external onlyRole(GOVERNOR_ROLE) {
        if (_address == address(0)) revert ZeroAddress();
        
        _grantRole(SUPPLY_MANAGER, _address);
        emit SupplyManagerRoleGranted(_address);
    }

    /**
     * @notice Revoke the SUPPLY_MANAGER role from an address.
     * @param _address The address to revoke the SUPPLY_MANAGER role from.
     */
    function revokeSupplyManagerRole(address _address) external onlyRole(GOVERNOR_ROLE) {
        if (_address == address(0)) revert ZeroAddress();
        
        _revokeRole(SUPPLY_MANAGER, _address);
        emit SupplyManagerRoleRevoked(_address);
    }

    /**
     * @notice Grant approval to a new pack issuer address
     * @param _packIssuer The address to grant pack issuer approval to
     * @dev This function allows adding new pack issuers without calling the full setApprovals function
     */
    function grantPackIssuerApproval(address _packIssuer) external onlyRole(GOVERNOR_ROLE) {
        if (_packIssuer == address(0)) revert ZeroAddress();
        
        // Grant approval for token transfers
        this.setApprovalForAll(_packIssuer, true);
        
        // Add to whitelist
        whitelistedAddresses[_packIssuer] = true;
        
        emit ApprovalSet(_packIssuer, true);
        emit AddressWhitelisted(_packIssuer, true);
    }

    /**
     * @notice Revoke approval from a pack issuer address
     * @param _packIssuer The address to revoke pack issuer approval from
     * @dev This function allows removing pack issuers
     */
    function revokePackIssuerApproval(address _packIssuer) external onlyRole(GOVERNOR_ROLE) {
        if (_packIssuer == address(0)) revert ZeroAddress();
        
        // Revoke approval for token transfers
        this.setApprovalForAll(_packIssuer, false);
        
        // Remove from whitelist
        whitelistedAddresses[_packIssuer] = false;
        
        emit ApprovalSet(_packIssuer, false);
        emit AddressWhitelisted(_packIssuer, false);
    }
    /**
     * Set the base URI for the player metadata if needed in the future.
     * @param _baseURI The new base URI for the player metadata.
     */
    function setBaseURI(string memory _baseURI) external onlyRole(GOVERNOR_ROLE) {
        if(bytes(_baseURI).length == 0) revert BaseURICannotBeEmpty();

        baseURI = _baseURI;

        emit URI(_baseURI, 0);
        emit BaseURIChanged(_baseURI);
    }

    /**
     * Sets the player pack address.
     * @param _playerPack The new player pack address.
     */
    function setPlayerPack(address _playerPack) external onlyRole(GOVERNOR_ROLE) {
        if (_playerPack == address(0)) revert ZeroAddress();

        playerPack = _playerPack;
        emit PlayerPackContractChanged(_playerPack);
    }

    /**
     * Sets the FDF pair address.
     * @param _fdfPair The new FDF pair address.
     */
    function setFdfPair(address _fdfPair) external onlyRole(GOVERNOR_ROLE) {
        if (_fdfPair == address(0)) revert ZeroAddress();

        fdfPair = _fdfPair;
        emit FdfPairContractChanged(_fdfPair);
    }

    /**
     * Sets the development players address.
     * @param _developmentPlayers The new development players address.
     */
    function setDevelopmentPlayers(address _developmentPlayers) external onlyRole(GOVERNOR_ROLE) {
        if (_developmentPlayers == address(0)) revert ZeroAddress();

        developmentPlayers = _developmentPlayers;
        emit DevelopmentPlayersContractChanged(_developmentPlayers);
    }

    /**
     * Sets the currency token address.
     * @param _currencyToken The new currency token address.
     */
    function setCurrencyToken(address _currencyToken) external onlyRole(GOVERNOR_ROLE) {
        if (_currencyToken == address(0)) revert ZeroAddress();

        currencyToken = IERC20(_currencyToken);
        currencyToken.forceApprove(fdfPair, type(uint256).max);

        emit CurrencyTokenContractChanged(_currencyToken);
    }

    /**
     * Sets the fee manager address.
     * @param _feeManager The new fee manager address.
     */
    function setFeeManager(address _feeManager) external onlyRole(GOVERNOR_ROLE) {
        if (_feeManager == address(0)) revert ZeroAddress();

        feeManager = IFeeManager(_feeManager);
        emit FeeManagerContractChanged(_feeManager);
    }    

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 _interfaceId) public view virtual override(ERC1155Upgradeable, ERC1155HolderUpgradeable, AccessControlUpgradeable, IERC165) returns (bool) {
        return _interfaceId == type(IPlayer).interfaceId || super.supportsInterface(_interfaceId);
    }

    /**
     * @notice Required by the UUPSUpgradeable module
     * @dev Only allows admins to upgrade the implementation
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(GOVERNOR_ROLE) {}
}
