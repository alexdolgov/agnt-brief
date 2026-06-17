// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./ThenianFeeConverterRouter.sol";
import '../interfaces/Pairs/IPair.sol';
import "../interfaces/Masterchef/IThenianChef.sol";


contract ThenianFeeConverter is Ownable, ThenianFeeConverterRouter {

 
    modifier keeper() {
        require(isKeeper[msg.sender] == true || msg.sender == owner(), 'not keeper');
        _;
    }


    constructor() {
        rewardToken = 0xF4C8E32EaDEC4BFe97E0F595AdD0f4450a863a11;
        isKeeper[msg.sender] == true;
        isPaused = false;
    }


    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    KEEPER
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    /// @notice Claim SolidlyPairs fees
    function claimFees() external keeper {
        uint i = 0;
        uint _len = pairs.length;
        address[] memory _pairs = new address[](_len);
        _pairs = pairs;

        for(i; i <_len; i++){
            try IPair(_pairs[i]).claimStakingFees() {
                emit ClaimFee(_pairs[i], block.timestamp);
            }
            catch {
                emit ClaimFeeError(_pairs[i], block.timestamp);
            }
        }

    }

 

    /// @notice Swap all the tokens
    function swap() external keeper {
        _swapInternal(0, tokens.length);
    }

    /// @notice swap a certain amount of token 
    function swap(uint256 from, uint256 to) external keeper {
        _swapInternal(from, to);
    }

    /// @notice execute the swap and update masterchef distribution rate
    function _swapInternal(uint256 from, uint256 to) internal {
        require(!isPaused, 'TFC: paused');
        
        uint256 _balance;
        address _token;
        uint256 i;

        for(i=from; i < to; i++){
            _token = tokens[i];
            _balance = IERC20(_token).balanceOf(address(this));
            if(_balance > 0) _swap(_token, _balance); 
        }

        _balance = IERC20(rewardToken).balanceOf(address(this));
        if(_balance > 0){
            _safeTransfer(rewardToken, masterchef, _balance);
            IThenianChef(masterchef).setDistributionRate(_balance);
        }
        
        emit StakingReward(block.timestamp, _balance);

    }



    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    VIEW
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */
    /// @notice view length of all tokens
    function tokensLength() external view returns(uint256) {
        return tokens.length;
    }

    /// @notice view length of all solidly pairs
    function pairsLength() external view returns(uint256) {
        return pairs.length;
    }



    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    OWNER
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */
    
    ///@notice claim any pair. Used if ClaimFeeError() is emitted 
    function claimSingleFee(address _pair) external onlyOwner {
        require(_pair != address(0), "TFC: ZeroAddress");
        IPair(_pair).claimStakingFees();
        emit ClaimFee(_pair, block.timestamp);
    }


    ///@notice set Masterchef distriubtion given this.balance 
    function updateMasterchefDistributionRate() external onlyOwner {
        uint _balance = IERC20(rewardToken).balanceOf(address(this));
        _safeTransfer(rewardToken, masterchef, _balance);
        IThenianChef(masterchef).setDistributionRate(_balance);
        emit StakingReward(block.timestamp, _balance);
    }



    /// @notice Add Solidly volatile or stable pair
    /// @dev    Fusion pairs send directly the fees via FeeVault, no need to add pair
    /// @param _pair pair to add
    function addPair(address[] calldata _pair) external onlyOwner {
        uint i = 0;
        address _singlePair = address(0);
        for(i; i < _pair.length; i++){
            _singlePair = _pair[i];
            require(_singlePair != address(0), "TFC: ZeroAddress");
            if(!isPair[_singlePair]){
                pairs.push(_singlePair);
                isPair[_singlePair] = true;
                emit AddPair(_singlePair);
            }
        }
    }

    /// @notice Remove Solidly volatile or stable pair
    function removePair(address _pair) external onlyOwner {
        uint i = 0;
        uint len = pairs.length;
        for(i; i < len; i++){
            if(pairs[i] == _pair){
                pairs[i] = pairs[len -1];
                pairs.pop();
                isPair[_pair] = false;
                emit RemovePair(_pair);
                break;
            }
        }
    }

    /// @notice Add a token to the tokens list
    function addToken(address[] calldata _tokens) external onlyOwner {
        address _token;
        for(uint i = 0; i < _tokens.length; i++){
            _token = _tokens[i];
            require(_token != address(0), "TFC: ZeroAddress");
            tokens.push(_token);
            isToken[_token] = true;
            _safeApprove(_token, routerAlgebra, 0);
            _safeApprove(_token, routerAlgebra, type(uint).max);
            _safeApprove(_token, routerSolidly, 0);
            _safeApprove(_token, routerSolidly, type(uint).max);
            emit AddToken(_token);
        }
    }

    /// @notice Remove a token from the token list
    function removeToken(address _token) external onlyOwner {
        uint i = 0;
        uint len = tokens.length;
        for(i; i < len; i++){
            if(tokens[i] == _token){
                tokens[i] = tokens[len -1];
                tokens.pop();
                isToken[_token] = false;
                _safeApprove(_token, routerAlgebra, 0);
                _safeApprove(_token, routerSolidly, 0);
                emit RemoveToken(_token);
                break;
            }
        }
    }

    /// @notice Set the path for a given token
    /// @dev    deadline, amountIn and amountOutMinimum;are set during swap
    ///         TokenOut is RewardToken! 
    /// @param _token   the starting token
    /// @param path     the path in bytes (see ISwapRouter.ExactInputParams)
    function setPathToToken(address _token, bytes calldata path) external onlyOwner {
        tokenToPath[_token] = path;
        hasPath[_token] = true;
        emit SetPath(_token, path);
    }

    /// @notice Remove the path from a given token
    function removePathFromToken(address _token) external onlyOwner {
        tokenToPath[_token] = "";
        hasPath[_token] = false;
        emit RemovePath(_token);
    }


    ///@notice in case token get stuck.
    function withdrawERC20(address _token, uint256 _amount) external onlyOwner {
        require(_token != address(0), "TFC: ZeroAddress");
        require(IERC20(_token).balanceOf(address(this)) >= _amount, "TCF: !amount");
        _safeTransfer(_token, msg.sender, _amount);
        emit WithdrawERC20(_token, msg.sender, _amount);
    }
    
    /// @notice Set a new keeper
    function setKeeper(address _keeper) external onlyOwner {
        require(_keeper != address(0), "TFC: ZeroAddress");
        require(isKeeper[_keeper] == false, "TFC: keeper");
        isKeeper[_keeper] = true;
        emit SetKeeper(_keeper);
    }

    /// @notice Remove a keeper
    function removeKeeper(address _keeper) external onlyOwner {
        require(_keeper != address(0), "TFC: ZeroAddress");
        require(isKeeper[_keeper] == true, "TFC: !keeper");
        isKeeper[_keeper] = false;
        emit RemoveKeeper(_keeper);
    }
    
    /// @notice Set the solidly router
    function setRouterSolidly(address _router) external onlyOwner {
        require(_router != address(0), "TFC: ZeroAddress");
        routerSolidly = _router;
        emit SetSolidlyRouter(_router);
    }

    /// @notice Set the algebra router
    function setRouterAlgebra(address _router) external onlyOwner {
        require(_router != address(0), "TFC: ZeroAddress");
        routerAlgebra = _router;
        emit SetAlgebraRouter(_router);
    }

    /// @notice Set the masterchef
    function setMasterchef(address _masterchef) external onlyOwner {
        require(_masterchef != address(0), "TFC: ZeroAddress");
        masterchef = _masterchef;
        emit SetMasterchef(_masterchef);
    }

    /// @notice Set Reward token 
    /// @dev    Paths end with the reward token, if a new token is set check them 
    function setRewardToken(address _token) external onlyOwner {
        require(_token != address(0), "TFC: ZeroAddress");
        rewardToken = _token;
        emit SetRewardToken(_token);
    }

    /// @notice Swap a token using Algebra input single
    function swapManualInputSingleAlgebra(address _tokenIn, address _tokenOut, uint256 _amountIn, uint256 _amountOutMin, uint160 _limitSqrtPrice) external onlyOwner returns (uint256 _amountOut) {
        return _swapManualInputSingleAlgebra(_tokenIn, _tokenOut, _amountIn, _amountOutMin, _limitSqrtPrice); 
    }

    ///@notice Swap a token using Solidly router 
    function swapManualV2(uint amountIn,uint amountOutMin, IRouter.route[] calldata _routes) external onlyOwner returns (uint[] memory amounts) {
        return _swapManualV2(amountIn, amountOutMin, _routes, block.timestamp + 600);
    }


    /// @notice (Un)Pause the swap function
    function triggerPause() external onlyOwner {
        isPaused = !isPaused;
        emit TriggerPause(isPaused);
    }





}