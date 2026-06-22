// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

// OpenZeppelin imports for cryptographic and ERC20 token functionality
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


// Importing necessary interfaces and dependencies
import "./MuonClient.sol";
import "./interfaces/ITradingCompetitionManager.sol";

contract Rewarder is MuonClient, OwnableUpgradeable {
    using ECDSA for bytes32;
    using SafeERC20 for IERC20;

    // Constants and state variables
    bytes32 public PROJECT_ID; // DiBs Unique Project ID
    address public validMuonGateway; // Valid Muon gateway
    address public perpManager;

    mapping(address => mapping(uint256 => mapping(address => uint256))) public claimed; // Mapping of user's claimed balance. claimed[user][competitionId][token] = amount
    mapping(uint256 => mapping(address => uint256)) public totalReward; // Mapping of total reward per trading competition totalReward[id] = amount in rewardToken
    mapping(uint256 => address[]) public rewardToken; // Competition id => prize token

    // Events
    event Reward(uint256 indexed competitionId, address indexed token, uint256 amount);
    event Claim(address indexed user, uint256 indexed competitionId, address indexed token, uint256 amount);

    // Errors
    error InvalidSignatureVerify(uint hash);
    error InvalidSignatureGateway(address gateway);

    /// @notice Initialize the contract
    /// @param _validMuonGateway address of the valid Muon gateway
    /// @param _muonAppId muon app id
    /// @param _muonPublicKey muon public key
    function initialize(
        address _perpManager,
        address _validMuonGateway,
        uint256 _muonAppId,
        PublicKey memory _muonPublicKey
    ) public initializer {
        perpManager = _perpManager;
        __MuonClient_init(_muonAppId, _muonPublicKey);
        __DiBsRewarder_init(_validMuonGateway);
        __Ownable_init();
    }

    /// @notice Initialize the DiBsRewarder contract
    /// @param _validMuonGateway address of the valid Muon gateway
    function __DiBsRewarder_init(
        address _validMuonGateway
    ) public onlyInitializing {
        validMuonGateway = _validMuonGateway;

        PROJECT_ID = keccak256(
            abi.encodePacked(uint256(block.chainid), address(this))
        );

    }

    /// @notice Fill reward for a given trading competition 
    /// @param _tradingCompetitionId competition to fill reward for
    /// @param _amount amount of reward to fill
    function fill(uint256 _tradingCompetitionId, address _token, uint256 _amount) external {
        //Only correct TC Account Manager can call 
        ITradingCompetitionManager.TC memory tc = ITradingCompetitionManager(perpManager).idToTradingCompetition(_tradingCompetitionId);
        require(msg.sender == tc.tradingCompetition, "Rewarder: invalid fill sender");

        if(rewardToken[_tradingCompetitionId].length == 0) rewardToken[_tradingCompetitionId] = tc.prize.token;
        require(_isRewardToken(_token, _tradingCompetitionId), "Rewarder: wrong fill token");

        if(_amount > 0) {
            IERC20(_token).safeTransferFrom(msg.sender,address(this),_amount);
            totalReward[_tradingCompetitionId][_token] += _amount;
            emit Reward(_tradingCompetitionId, _token, _amount);
        }
    }

    /// @notice Fill reward for a given trading competition 
    /// @param _tradingCompetitionId competition to fill reward for
    /// @param _amount amount of reward to fill
    /// @dev Owner fee is directly sent to EOA
    function externalFill(uint256 _tradingCompetitionId, address _token, uint256 _amount) external {
        //Only correct TC Account Manager can call 
        ITradingCompetitionManager.TC memory tc_data = ITradingCompetitionManager(perpManager).idToTradingCompetition(_tradingCompetitionId);
        require(_isRewardToken(_token, _tradingCompetitionId), "Rewarder: wrong fill token");

        if(_amount > 0) {
            
            uint ownerAmount = tc_data.prize.owner_fee * _amount / 1000;
            IERC20(_token).safeTransferFrom(msg.sender, tc_data.owner, ownerAmount); 
            IERC20(_token).safeTransferFrom(msg.sender,address(this),_amount - ownerAmount);
            totalReward[_tradingCompetitionId][_token] += _amount - ownerAmount;

            emit Reward(_tradingCompetitionId, _token, _amount);
        }
    }



    

    /// @notice Claim reward for a given trading competition - requires valid muon signature
    /// @param _tradingCompetitionId competition to claim reward for
    /// @param _userPosition user's position in the leaderboard
    /// @param _tieCounter if > 0, it means that a tie happened and the prizes should be split accordingly
    /// @param _sigTimestamp timestamp of the signature
    /// @param _reqId request id that the signature was obtained from
    /// @param _sign signature of the data
    /// @param _gatewaySignature signature of the data by the gateway (specific Muon node)
    /// reverts if the signature is invalid
    function claim(
        uint256 _tradingCompetitionId,
        uint256 _userPosition,
        uint256 _tieCounter,
        uint256 _sigTimestamp,
        bytes calldata _reqId,
        SchnorrSign calldata _sign,
        bytes calldata _gatewaySignature
    ) external { 

        require(ITradingCompetitionManager(perpManager).idToTradingCompetition(_tradingCompetitionId).timestamp.endTimestamp < block.timestamp + 300, "Rewarder: ClaimNotActive");

        verifyTSSAndGW(
            abi.encodePacked(
                msg.sender,
                _tradingCompetitionId,
                _userPosition,
                _tieCounter
            ),
            _reqId,
            _sign,
            _gatewaySignature
        );

        ITradingCompetitionManager.TC memory tc_data = ITradingCompetitionManager(perpManager).idToTradingCompetition(_tradingCompetitionId);

        for(uint i = 0; i < tc_data.prize.token.length; i++) _claimToken(_tradingCompetitionId, _userPosition, _tieCounter, i, tc_data.prize.token[i]);

    }       



    function _claimToken(uint256 _tradingCompetitionId, uint256 _userPosition, uint256 _tieCounter, uint256 pos, address _token) internal {
        
        // Sort the weights, lowest first
        uint256[] memory weights = ITradingCompetitionManager(perpManager).idToTradingCompetition(_tradingCompetitionId).prize.weights;
        require(_userPosition < weights.length, "Rewarder: not a winner"); // Edge case is when we have a tie for the last "winning" place

        uint256 total = 0;
        for(uint i = 0; i <= _tieCounter && i + _userPosition < weights.length; i++) {
            total += weights[_userPosition + i] * totalReward[_tradingCompetitionId][_token];
        }


        uint256 rewardAmount = total / (1 + _tieCounter) / ITradingCompetitionManager(perpManager).PRECISION();
        uint256 withdrawableAmount = rewardAmount - claimed[msg.sender][_tradingCompetitionId][_token];
        claimed[msg.sender][_tradingCompetitionId][_token] += withdrawableAmount;

        if(withdrawableAmount > 0)
            IERC20(rewardToken[_tradingCompetitionId][pos]).safeTransfer(msg.sender, withdrawableAmount);

        emit Claim(msg.sender, _tradingCompetitionId, rewardToken[_tradingCompetitionId][pos], withdrawableAmount);
        
    }

    function _isRewardToken(address token, uint256 id) internal view returns(bool) {
        address[] memory _tokens = rewardToken[id];
        for(uint i = 0; i < _tokens.length; i++){
            if(_tokens[i] == token) return true;
        }
        return false;
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
            revert InvalidSignatureVerify(uint256(_hash));

        _hash = _hash.toEthSignedMessageHash();
        address gatewaySignatureSigner = _hash.recover(_gatewaySignature);

        if (gatewaySignatureSigner != validMuonGateway)
            revert InvalidSignatureGateway(gatewaySignatureSigner);
    }



    function setAppId(uint256 id) external onlyOwner {
        muonAppId = id;
    }

    function setPubKey(PublicKey memory pubkey) external onlyOwner {
        validatePubKey(pubkey.x);
        muonPublicKey = pubkey;
    }

    function setMuonGateway(address gw) external onlyOwner {
        validMuonGateway = gw;
    }

    function setPerManager(address _perpManager) external onlyOwner {
        perpManager = _perpManager;
    }

    function getAccountManager(uint256 _tradingCompetitionId) external view returns(address) {
        return _getAccountManager(_tradingCompetitionId);
    }

    function _getAccountManager(uint256 _tradingCompetitionId) internal view returns(address) {
        return ITradingCompetitionManager(perpManager).idToTradingCompetition(_tradingCompetitionId).tradingCompetition;
    }
}