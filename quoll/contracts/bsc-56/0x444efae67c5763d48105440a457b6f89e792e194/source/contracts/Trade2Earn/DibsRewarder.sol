// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// OpenZeppelin imports for cryptographic and ERC20 token functionality
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

// Importing necessary interfaces and dependencies
import "../Muon/MuonClient.sol";


contract DibsRewarder is MuonClient, AccessControlUpgradeable, ReentrancyGuardUpgradeable {
    using ECDSA for bytes32;
    using SafeERC20Upgradeable for IERC20Upgradeable;

    /// @dev Bool to init startTimestamp
    bool public init;

    /// @dev When the rewarder starts
    uint256 public startTimestamp;

    /// @dev DiBs Unique Project ID
    bytes32 public PROJECT_ID; 

    /// @dev  Reward token list
    address[] public rewardToken; 
    /// @dev Valid Muon gateway
    address public validMuonGateway;

    /// @dev flag if reward token exists
    mapping(address => bool) public isRewardToken;
    /// @dev Mapping of user's claimed balance per day. claimed[user][token][day] = amount
    mapping(address => mapping(address => mapping(uint256 => uint256))) public claimed; 
    /// @dev  Mapping of total reward per day totalReward[token][day] = amount
    mapping(address => mapping(uint256 => uint256)) public totalReward; 


    // Events
    event Reward(address token, uint256 day, uint256 amount);
    event Claim(address indexed user, address indexed token, uint256 day, uint256 amount);
    event SetRewardToken(address indexed token);
    event RemoveRewardToken(address token);

    // Errors
    error RewarderNotInitialized();
    error RewarderInitialized();
    error InvalidSignature();
    error DayNotFinished();
    error DayExpired();
    error LengthMismatchFill();
    error LengthMismatchClaim();
    error TokenNotAllowed();

    /// @notice Initialize the contract
    /// @param _tokens addresses of the reward token
    /// @param _validMuonGateway address of the valid Muon gateway
    /// @param _admin address of the admin, can set reward token
    /// @param _muonAppId muon app id
    /// @param _muonPublicKey muon public key
    function initialize(
        address[] calldata _tokens,
        address _admin,
        address _validMuonGateway,
        uint256 _muonAppId,
        PublicKey memory _muonPublicKey
    ) public initializer {
        __MuonClient_init(_muonAppId, _muonPublicKey);
        __DiBsRewarder_init(_tokens, _admin, _validMuonGateway);
    }

    /// @notice Initialize the DiBsRewarder contract
    /// @param _tokens addresses of the reward token
    /// @param _validMuonGateway address of the valid Muon gateway
    /// @param _admin address of the admin, can set reward token
    function __DiBsRewarder_init(
        address[] calldata _tokens,
        address _admin,
        address _validMuonGateway
    ) private onlyInitializing {
        
        init = false;

        _setRewardToken(_tokens);
        
        validMuonGateway = _validMuonGateway;

        PROJECT_ID = keccak256(
            abi.encodePacked(uint256(block.chainid), address(this))
        );

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }


    /// @notice Init StartTimestamp var
    function initStartTimestamp() external onlyRole(DEFAULT_ADMIN_ROLE) {
        if(init) revert RewarderInitialized();
        startTimestamp = block.timestamp / 1 days * 1 days;
        init = true;
    }


 
    /// @notice Claim reward for a given/multiple day - requires valid muon signature
    /// @param _day day to claim reward for
    /// @param _userVolume user's volume for the day
    /// @param _totalVolume total volume for the day
    /// @param _sigTimestamp timestamp of the signature
    /// @param _reqId request id that the signature was obtained from
    /// @param _sign signature of the data
    /// @param _gatewaySignature signature of the data by the gateway (specific Muon node)
    /// reverts if the signature is invalid
    function claim(uint256 _day,uint256 _userVolume,uint256 _totalVolume,uint256 _sigTimestamp,bytes calldata _reqId,SchnorrSign calldata _sign,bytes calldata _gatewaySignature) external nonReentrant {
        
        if(!init) revert RewarderNotInitialized();
        if (_day >= (_sigTimestamp - startTimestamp) / 1 days) revert DayNotFinished();
        
        verifyTSSAndGW(
            abi.encodePacked(PROJECT_ID,msg.sender,address(0),_day,_userVolume,_totalVolume,_sigTimestamp),
            _reqId,_sign,_gatewaySignature
        );
        
        uint256 k = 0;
        for(k; k < rewardToken.length; k++){
            uint256 rewardAmount = (totalReward[rewardToken[k]][_day] * _userVolume) / _totalVolume;
            uint256 withdrawableAmount = rewardAmount - claimed[msg.sender][rewardToken[k]][_day];

            if(withdrawableAmount > 0){
                claimed[msg.sender][rewardToken[k]][_day] += withdrawableAmount;
                IERC20Upgradeable(rewardToken[k]).safeTransfer(msg.sender, withdrawableAmount);
                emit Claim(msg.sender, rewardToken[k], _day, rewardAmount);
            }
        }  
    }


    /// @notice Set reward token
    /// @param _tokens address of reward token
    function setRewardToken(address[] calldata _tokens) external onlyRole(DEFAULT_ADMIN_ROLE) {
       _setRewardToken(_tokens);
    }

    function _setRewardToken(address[] calldata _tokens) internal {
         for(uint256 i = 0; i < _tokens.length; i++){
            if(!isRewardToken[_tokens[i]]){
                rewardToken.push(_tokens[i]);
                isRewardToken[_tokens[i]] = true;
                emit SetRewardToken(_tokens[i]);
            }
        }
    }

    /// @notice Remove reward token
    /// @param _tokens address of reward token
    function removeRewardToken(address[] calldata _tokens) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _removeRewardToken(_tokens);
    }

    function _removeRewardToken(address[] calldata _tokens) internal {
        uint256 i = 0;
        uint256 k = 0;
        for(i = 0; i < _tokens.length; i++) {
            if(isRewardToken[_tokens[i]]){
                for(k = 0; k < rewardToken.length; k++){
                    if(_tokens[i] == rewardToken[k]){
                        isRewardToken[_tokens[i]] = false;
                        rewardToken[k] = rewardToken[rewardToken.length -1];
                        rewardToken.pop();
                        emit RemoveRewardToken(_tokens[i]);
                        break;
                    }
                }

            }
        }
    }
    
    /// @notice Fill reward for a given day from the token contract
    /// @param _token the reward token
    /// @param _day day to fill reward for
    /// @param _amount amount of reward to fill
    function fill(address _token, uint256[] calldata _day, uint256[] calldata _amount) external nonReentrant onlyRole(DEFAULT_ADMIN_ROLE) {
        
        if(!init) revert RewarderNotInitialized();
        if(_day.length != _amount.length) revert LengthMismatchFill();
        if(!isRewardToken[_token]) revert TokenNotAllowed();

        uint256 i = 0;
        uint256 totalAmounts = 0;
        for(;i < _amount.length; i++){
            if(_day[i] < _currentDay()) revert DayExpired();
            totalAmounts += _amount[i];
            totalReward[_token][_day[i]] += _amount[i];
            emit Reward(_token, _day[i], _amount[i]);
        }
        IERC20Upgradeable(_token).safeTransferFrom(msg.sender,address(this),totalAmounts);
    }




    /// @notice Verifies a Muon signature of the given data
    /// @param _data data being signed
    /// @param _reqId request id that the signature was obtained from
    /// @param _sign signature of the data
    /// @param _gatewaySignature signature of the data by the gateway (specific Muon node)
    /// reverts if the signature is invalid
    function verifyTSSAndGW(
        bytes memory _data,
        bytes calldata _reqId,
        SchnorrSign calldata _sign,
        bytes calldata _gatewaySignature
    ) internal {
        bytes32 _hash = keccak256(abi.encodePacked(muonAppId, _reqId, _data));
        if (!muonVerify(_reqId, uint256(_hash), _sign, muonPublicKey))
            revert InvalidSignature();

        _hash = _hash.toEthSignedMessageHash();
        address gatewaySignatureSigner = _hash.recover(_gatewaySignature);

        if (gatewaySignatureSigner != validMuonGateway)
            revert InvalidSignature();
    }


    /// @notice Read length of rewardToken array
    function rewardTokenLength() external view returns(uint) {
        return rewardToken.length;
    }

    /// @notice Read all rewardToken array
    function rewardTokenList() external view returns(address[] memory) {
        return rewardToken;
    }

    /// @notice Read the current day
    function currentDay() external view returns(uint currentday){
        return _currentDay();
    }

    function _currentDay() internal view returns(uint currentday){
        return (block.timestamp - startTimestamp) / 1 days;
    }

    /* upgrades */

    /// @notice Update the Muon information
    /// @param _validMuonGateway new gateway
    /// @param _muonAppId       new muon App Id
    /// @param _muonPublicKey   new Public key
    function InitMuon(address _validMuonGateway,uint256 _muonAppId,PublicKey memory _muonPublicKey) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if(_muonAppId != muonAppId && _muonAppId != 0) __MuonClient_init(_muonAppId, _muonPublicKey);
        if(_validMuonGateway != address(0)) validMuonGateway = _validMuonGateway;
    }


}