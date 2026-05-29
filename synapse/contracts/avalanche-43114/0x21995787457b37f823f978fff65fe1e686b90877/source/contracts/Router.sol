// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "./lib/BytesManipulation.sol";
import "./interface/IAdapter.sol";
import "./interface/IWETH9.sol";
import "./interface/IBridge.sol";
import "./lib/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Router is Ownable {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    address payable public WGAS;
    address public constant GAS = address(0);
    uint256 public constant FEE_DENOMINATOR = 1e4;
    uint256 public MIN_FEE = 0;
    address public FEE_CLAIMER;
    address[] public TRUSTED_TOKENS;
    address[] public ADAPTERS;
    address public BRIDGE;
    bytes32 constant REDEEM = keccak256("REDEEM");
    bytes32 constant DEPOSIT = keccak256("DEPOSIT");

    event Recovered(address indexed _asset, uint256 amount);

    event UpdatedTrustedTokens(address[] _newTrustedTokens);

    event UpdatedAdapters(address[] _newAdapters);

    event UpdatedMinFee(uint256 _oldMinFee, uint256 _newMinFee);

    event UpdatedFeeClaimer(address _oldFeeClaimer, address _newFeeClaimer);

    event Swap(
        address indexed _tokenIn,
        address indexed _tokenOut,
        uint256 _amountIn,
        uint256 _amountOut
    );

    struct Query {
        address adapter;
        address tokenIn;
        address tokenOut;
        uint256 amountOut;
    }

    struct OfferWithGas {
        bytes amounts;
        bytes adapters;
        bytes path;
        uint256 gasEstimate;
    }

    struct FormattedOfferWithGas {
        uint256[] amounts;
        address[] adapters;
        address[] path;
        uint256 gasEstimate;
    }

    struct Trade {
        uint256 amountIn;
        uint256 amountOut;
        address[] path;
        address[] adapters;
    }

    constructor(
        address[] memory _adapters,
        address[] memory _trustedTokens,
        address _feeClaimer,
        address payable _weth,
        address _bridge
    ) public {
        WGAS = _weth;
        BRIDGE = _bridge;
        
        setTrustedTokens(_trustedTokens);
        setFeeClaimer(_feeClaimer);
        setAdapters(_adapters);
        
        _setAllowances();
    }

    // -- SETTERS --

    function _setAllowances() internal {
        IERC20(WGAS).safeApprove(WGAS, type(uint256).max);
    }

    function setTrustedTokens(address[] memory _trustedTokens)
        public
        onlyOwner
    {
        emit UpdatedTrustedTokens(_trustedTokens);
        TRUSTED_TOKENS = _trustedTokens;
        for (uint256 i = 0; i < _trustedTokens.length; i++) {
            IERC20(_trustedTokens[i]).safeApprove(BRIDGE, type(uint256).max);
        }
    }

    function setAdapters(address[] memory _adapters) public onlyOwner {
        emit UpdatedAdapters(_adapters);
        ADAPTERS = _adapters;
    }

    function setMinFee(uint256 _fee) external onlyOwner {
        emit UpdatedMinFee(MIN_FEE, _fee);
        MIN_FEE = _fee;
    }

    function setFeeClaimer(address _claimer) public onlyOwner {
        emit UpdatedFeeClaimer(FEE_CLAIMER, _claimer);
        FEE_CLAIMER = _claimer;
    }

    //  -- GENERAL --

    function trustedTokensCount() external view returns (uint256) {
        return TRUSTED_TOKENS.length;
    }

    function adaptersCount() external view returns (uint256) {
        return ADAPTERS.length;
    }

    function recoverERC20(address _tokenAddress, uint256 _tokenAmount)
        external
        onlyOwner
    {
        require(_tokenAmount > 0, "Router: Nothing to recover");
        IERC20(_tokenAddress).safeTransfer(msg.sender, _tokenAmount);
        emit Recovered(_tokenAddress, _tokenAmount);
    }

    function recoverGAS(uint256 _amount) external onlyOwner {
        require(_amount > 0, "Router: Nothing to recover");
        payable(msg.sender).transfer(_amount);
        emit Recovered(address(0), _amount);
    }

    // Fallback
    receive() external payable {}

    // -- HELPERS --

    function _applyFee(uint256 _amountIn, uint256 _fee)
        internal
        view
        returns (uint256)
    {
        require(_fee >= MIN_FEE, "Router: Insufficient fee");
        return _amountIn.mul(FEE_DENOMINATOR.sub(_fee)) / FEE_DENOMINATOR;
    }

    function _wrap(uint256 _amount) internal {
        IWETH9(WGAS).deposit{value: _amount}();
    }

    function _unwrap(uint256 _amount) internal {
        IWETH9(WGAS).withdraw(_amount);
    }

    /**
     * @notice Return tokens to user
     * @dev Pass address(0) for GAS
     * @param _token address
     * @param _amount tokens to return
     * @param _to address where funds should be sent to
     */
    function _returnTokensTo(
        address _token,
        uint256 _amount,
        address _to
    ) internal {
        if (address(this) != _to) {
            if (_token == GAS) {
                payable(_to).transfer(_amount);
            } else {
                IERC20(_token).safeTransfer(_to, _amount);
            }
        }
    }

    /**
     * Makes a deep copy of OfferWithGas struct
     */
    function _cloneOfferWithGas(OfferWithGas memory _queries)
        internal
        pure
        returns (OfferWithGas memory)
    {
        return
            OfferWithGas(
                _queries.amounts,
                _queries.adapters,
                _queries.path,
                _queries.gasEstimate
            );
    }

    /**
     * Appends Query elements to Offer struct
     */
    function _addQueryWithGas(
        OfferWithGas memory _queries,
        uint256 _amount,
        address _adapter,
        address _tokenOut,
        uint256 _gasEstimate
    ) internal pure {
        _queries.path = BytesManipulation.mergeBytes(
            _queries.path,
            BytesManipulation.toBytes(_tokenOut)
        );
        _queries.amounts = BytesManipulation.mergeBytes(
            _queries.amounts,
            BytesManipulation.toBytes(_amount)
        );
        _queries.adapters = BytesManipulation.mergeBytes(
            _queries.adapters,
            BytesManipulation.toBytes(_adapter)
        );
        _queries.gasEstimate += _gasEstimate;
    }

    /**
     * Converts byte-arrays to an array of integers
     */
    function _formatAmounts(bytes memory _amounts)
        internal
        pure
        returns (uint256[] memory)
    {
        // Format amounts
        uint256 chunks = _amounts.length / 32;
        uint256[] memory amountsFormatted = new uint256[](chunks);
        for (uint256 i = 0; i < chunks; i++) {
            amountsFormatted[i] = BytesManipulation.bytesToUint256(
                i * 32 + 32,
                _amounts
            );
        }
        return amountsFormatted;
    }

    /**
     * Converts byte-array to an array of addresses
     */
    function _formatAddresses(bytes memory _addresses)
        internal
        pure
        returns (address[] memory)
    {
        uint256 chunks = _addresses.length / 32;
        address[] memory addressesFormatted = new address[](chunks);
        for (uint256 i = 0; i < chunks; i++) {
            addressesFormatted[i] = BytesManipulation.bytesToAddress(
                i * 32 + 32,
                _addresses
            );
        }
        return addressesFormatted;
    }

    /**
     * Formats elements in the Offer object from byte-arrays to integers and addresses
     */
    function _formatOfferWithGas(OfferWithGas memory _queries)
        internal
        pure
        returns (FormattedOfferWithGas memory)
    {
        return
            FormattedOfferWithGas(
                _formatAmounts(_queries.amounts),
                _formatAddresses(_queries.adapters),
                _formatAddresses(_queries.path),
                _queries.gasEstimate
            );
    }

    // -- QUERIES --

    /**
     * Query single adapter
     */
    function queryAdapter(
        uint256 _amountIn,
        address _tokenIn,
        address _tokenOut,
        uint8 _index
    ) external view returns (uint256) {
        IAdapter _adapter = IAdapter(ADAPTERS[_index]);
        uint256 amountOut = _adapter.query(_amountIn, _tokenIn, _tokenOut);
        return amountOut;
    }

    /**
     * Query specified adapters
     */
    function query(
        uint256 _amountIn,
        address _tokenIn,
        address _tokenOut,
        uint8[] calldata _options
    ) public view returns (Query memory) {
        Query memory bestQuery;
        for (uint8 i; i < _options.length; i++) {
            address _adapter = ADAPTERS[_options[i]];
            uint256 amountOut = IAdapter(_adapter).query(
                _amountIn,
                _tokenIn,
                _tokenOut
            );
            if (i == 0 || amountOut > bestQuery.amountOut) {
                bestQuery = Query(_adapter, _tokenIn, _tokenOut, amountOut);
            }
        }
        return bestQuery;
    }

    /**
     * Query all adapters
     */
    function query(
        uint256 _amountIn,
        address _tokenIn,
        address _tokenOut
    ) public view returns (Query memory) {
        Query memory bestQuery;
        for (uint8 i; i < ADAPTERS.length; i++) {
            address _adapter = ADAPTERS[i];
            uint256 amountOut = IAdapter(_adapter).query(
                _amountIn,
                _tokenIn,
                _tokenOut
            );
            if (i == 0 || amountOut > bestQuery.amountOut) {
                bestQuery = Query(_adapter, _tokenIn, _tokenOut, amountOut);
            }
        }
        return bestQuery;
    }

    /**
     * Return path with best returns between two tokens
     * Takes gas-cost into account
     */
    function findBestPathWithGas(
        uint256 _amountIn, 
        address _tokenIn, 
        address _tokenOut, 
        uint _maxSteps,
        uint _gasPrice
    ) external view returns (FormattedOfferWithGas memory) {
        require(_maxSteps>0 && _maxSteps<5, 'YakRouter: Invalid max-steps');
        OfferWithGas memory queries;
        uint tknOutPriceNwei = 0;
        queries.amounts = BytesManipulation.toBytes(_amountIn);
        queries.path = BytesManipulation.toBytes(_tokenIn);
        // Find the market price between AVAX and token-out and express gas price in token-out currency
        if(_gasPrice == 0){
            OfferWithGas memory gasQueries;
            gasQueries.amounts = BytesManipulation.toBytes(1e18);
            gasQueries.path = BytesManipulation.toBytes(WGAS);
            OfferWithGas memory gasQuery = _findBestPathWithGas(
                1e18, 
                WGAS, 
                _tokenOut, 
                2,
                gasQueries, 
                tknOutPriceNwei
            );  // Avoid low-liquidity price appreciation
            uint[] memory tokenOutAmounts = _formatAmounts(gasQuery.amounts);
            // Leave result nWei to preserve digits for assets with low decimal places
            tknOutPriceNwei = tokenOutAmounts[tokenOutAmounts.length-1].mul(_gasPrice/1e9);
        }
        queries = _findBestPathWithGas(
            _amountIn, 
            _tokenIn, 
            _tokenOut, 
            _maxSteps,
            queries, 
            tknOutPriceNwei
        );
        
        // If no paths are found return empty struct
        if (queries.adapters.length==0) {
            queries.amounts = '';
            queries.path = '';
        }
        return _formatOfferWithGas(queries);
    } 

    function _findBestPathWithGas(
        uint256 _amountIn, 
        address _tokenIn, 
        address _tokenOut, 
        uint _maxSteps,
        OfferWithGas memory _queries, 
        uint _tknOutPriceNwei
    ) internal view returns (OfferWithGas memory) {
        OfferWithGas memory bestOption = _cloneOfferWithGas(_queries);
        uint256 bestAmountOut;
        bool isGasIncluded = (_tknOutPriceNwei == 0);
        // First check if there is a path directly from tokenIn to tokenOut
        Query memory queryDirect = query(_amountIn, _tokenIn, _tokenOut);
        if (queryDirect.amountOut!=0) {
            uint gasEstimate = 0;
            if(isGasIncluded){
                gasEstimate = IAdapter(queryDirect.adapter).swapGasEstimate();
            }
            _addQueryWithGas(
                bestOption, 
                queryDirect.amountOut, 
                queryDirect.adapter, 
                queryDirect.tokenOut, 
                gasEstimate
            );
            bestAmountOut = queryDirect.amountOut;
        }
        // Only check the rest if they would go beyond step limit (Need at least 2 more steps)
        if (_maxSteps>1 && _queries.adapters.length/32<=_maxSteps-2) {
            // Check for paths that pass through trusted tokens
            for (uint256 i=0; i<TRUSTED_TOKENS.length; i++) {
                if (_tokenIn == TRUSTED_TOKENS[i]) {
                    continue;
                }
                // Loop through all adapters to find the best one for swapping tokenIn for one of the trusted tokens
                Query memory bestSwap = query(_amountIn, _tokenIn, TRUSTED_TOKENS[i]);
                if (bestSwap.amountOut==0) {
                    continue;
                }
                // Explore options that connect the current path to the tokenOut
                OfferWithGas memory newOffer = _cloneOfferWithGas(_queries);
                uint gasEstimate = 0;
                if(isGasIncluded){
                    gasEstimate = IAdapter(queryDirect.adapter).swapGasEstimate();
                }
                _addQueryWithGas(newOffer, bestSwap.amountOut, bestSwap.adapter, bestSwap.tokenOut, gasEstimate);
                newOffer = _findBestPathWithGas(
                    bestSwap.amountOut, 
                    TRUSTED_TOKENS[i], 
                    _tokenOut, 
                    _maxSteps, 
                    newOffer, 
                    _tknOutPriceNwei
                );
                address tokenOut = BytesManipulation.bytesToAddress(newOffer.path.length, newOffer.path);
                uint256 amountOut = BytesManipulation.bytesToUint256(newOffer.amounts.length, newOffer.amounts);
                // Check that the last token in the path is the tokenOut and update the new best option if neccesary
                if (_tokenOut == tokenOut && amountOut > bestAmountOut) {
                    if (isGasIncluded && newOffer.gasEstimate > bestOption.gasEstimate) {
                        uint gasCostDiff = _tknOutPriceNwei.mul(newOffer.gasEstimate-bestOption.gasEstimate) / 1e9;
                        uint priceDiff = amountOut - bestAmountOut;
                        if (gasCostDiff > priceDiff) { continue; }
                    }
                    bestAmountOut = amountOut;
                    bestOption = newOffer;
                }
            }
        }
        return bestOption;   
    }

    // -- SWAPPERS --

    function _swap(
        uint256 amountIn,
        uint256 amountOut,
        address[] calldata path,
        address[] calldata adapters,
        address _from,
        address _to,
        uint256 _fee
    ) internal returns (uint256) {
        uint256[] memory amounts = new uint256[](path.length);
        if (_fee > 0 || MIN_FEE > 0) {
            // Transfer fees to the claimer account and decrease initial amount
            amounts[0] = _applyFee(amountIn, _fee);
            IERC20(path[0]).safeTransferFrom(
                _from,
                FEE_CLAIMER,
                amountIn.sub(amounts[0])
            );
        } else {
            amounts[0] = amountIn;
        }
        IERC20(path[0]).safeTransferFrom(
            _from,
            adapters[0],
            amounts[0]
        );
        // Get amounts that will be swapped
        for (uint256 i = 0; i < adapters.length; i++) {
            amounts[i + 1] = IAdapter(adapters[i]).query(
                amounts[i],
                path[i],
                path[i + 1]
            );
        }
        require(
            amounts[amounts.length - 1] >= amountOut,
            "Router: Insufficient output amount"
        );
        for (uint256 i = 0; i < adapters.length; i++) {
            // All adapters should transfer output token to the following target
            // All targets are the adapters, expect for the last swap where tokens are sent out
            address targetAddress = i < adapters.length - 1
                ? adapters[i + 1]
                : _to;
            IAdapter(adapters[i]).swap(
                amounts[i],
                amounts[i + 1],
                path[i],
                path[i + 1],
                targetAddress
            );
        }
        emit Swap(
            path[0],
            path[path.length - 1],
            amountIn,
            amounts[amounts.length - 1]
        );
        return amounts[amounts.length - 1];
    }

    function swap(
        uint256 amountIn,
        uint256 amountOut,
        address[] calldata path,
        address[] calldata adapters,
        address _to,
        uint256 _fee
    ) public {
        _swap(amountIn, amountOut, path, adapters, msg.sender, _to, _fee);
    }

    function swapFromGAS(
        uint256 amountIn,
        uint256 amountOut,
        address[] calldata path,
        address[] calldata adapters,
        address _to,
        uint256 _fee
    ) external payable {
        require(
            path[0] == WGAS,
            "Router: Path needs to begin with WGAS"
        );
        _wrap(amountIn);
        _swap(amountIn, amountOut, path, adapters, msg.sender, _to, _fee);
    }

    function swapToGAS(
        uint256 amountIn,
        uint256 amountOut,
        address[] calldata path,
        address[] calldata adapters,
        address _to,
        uint256 _fee
    ) public {
        require(
            path[path.length - 1] == WGAS,
            "Router: Path needs to end with WGAS"
        );
        uint256 returnAmount = _swap(amountIn, amountOut, path, adapters, msg.sender, _to, _fee);
        _unwrap(returnAmount);
        _returnTokensTo(GAS, returnAmount, _to);
    }

    /**
     * Swap token to token without the need to approve the first token
     */
    function swapWithPermit(
        uint256 amountIn,
        uint256 amountOut,
        address[] calldata path,
        address[] calldata adapters,
        address _to,
        uint256 _fee,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) external {
        IERC20(path[0]).permit(
            msg.sender,
            address(this),
            amountIn,
            _deadline,
            _v,
            _r,
            _s
        );
        _swap(amountIn, amountOut, path, adapters, msg.sender, _to, _fee);
    }

    /**
     * Swap token to GAS without the need to approve the first token
     */
    function swapToGASWithPermit(
        uint256 amountIn,
        uint256 amountOut,
        address[] calldata path,
        address[] calldata adapters,
        address _to,
        uint256 _fee,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) external {
        IERC20(path[0]).permit(
            msg.sender,
            address(this),
            amountIn,
            _deadline,
            _v,
            _r,
            _s
        );
        swapToGAS(amountIn, amountOut, path, adapters, _to, _fee);
    }



    // -- SWAPPERS --

    function _selfswap(
        uint256 amountIn,
        uint256 amountOut,
        address[] calldata path,
        address[] calldata adapters,
        address _from,
        address _to,
        uint256 _fee
    ) internal returns (uint256) {
        uint256[] memory amounts = new uint256[](path.length);
        if (_fee > 0 || MIN_FEE > 0) {
            // Transfer fees to the claimer account and decrease initial amount
            amounts[0] = _applyFee(amountIn, _fee);
            IERC20(path[0]).safeTransferFrom(
                _from,
                FEE_CLAIMER,
                amountIn.sub(amounts[0])
            );
        } else {
            amounts[0] = amountIn;
        }
        // TO DO: REMOVE THIS
        // IERC20(path[0]).safeTransferFrom(
        //     _from,
        //     adapters[0],
        //     amounts[0]
        // );

        // Get amounts that will be swapped
        for (uint256 i = 0; i < adapters.length; i++) {
            amounts[i + 1] = IAdapter(adapters[i]).query(
                amounts[i],
                path[i],
                path[i + 1]
            );
        }
        require(
            amounts[amounts.length - 1] >= amountOut,
            "Router: Insufficient output amount"
        );
        for (uint256 i = 0; i < adapters.length; i++) {
            // All adapters should transfer output token to the following target
            // All targets are the adapters, expect for the last swap where tokens are sent out
            address targetAddress = i < adapters.length - 1
                ? adapters[i + 1]
                : _to;
            IAdapter(adapters[i]).swap(
                amounts[i],
                amounts[i + 1],
                path[i],
                path[i + 1],
                targetAddress
            );
        }
        emit Swap(
            path[0],
            path[path.length - 1],
            amountIn,
            amounts[amounts.length - 1]
        );
        return amounts[amounts.length - 1];
    }

    function selfSwap(
        uint256 amountIn,
        uint256 amountOut,
        address[] calldata path,
        address[] calldata adapters,
        address _to,
        uint256 _fee
    ) public {
        require(msg.sender == BRIDGE, "Invalid caller");
        _selfswap(amountIn, amountOut, path, adapters, msg.sender, _to, _fee);
    }

    function selfSwapFromGAS(
        uint256 amountIn,
        uint256 amountOut,
        address[] calldata path,
        address[] calldata adapters,
        address _to,
        uint256 _fee
    ) external payable {
        require(msg.sender == BRIDGE, "Invalid caller");
        require(
            path[0] == WGAS,
            "Router: Path needs to begin with WGAS"
        );
        _wrap(amountIn);
        _swap(amountIn, amountOut, path, adapters, msg.sender, _to, _fee);
    }

    function selfSwapToGAS(
        uint256 amountIn,
        uint256 amountOut,
        address[] calldata path,
        address[] calldata adapters,
        address _to,
        uint256 _fee
    ) public {
        require(msg.sender == BRIDGE, "Invalid caller");
        require(
            path[path.length - 1] == WGAS,
            "Router: Path needs to end with WGAS"
        );
        uint256 returnAmount = _swap(amountIn, amountOut, path, adapters, msg.sender, _to, _fee);
        _unwrap(returnAmount);
        _returnTokensTo(GAS, returnAmount, _to);
    }


    // **************************************************************** 
    // BRIDGE DEPOSIT FUNCTIONS
    // **************************************************************** 

    function swap(
        uint256 amountIn,
        uint256 amountOut,
        address[] calldata path,
        address[] calldata adapters,
        address _to,
        uint256 _fee,
        bytes calldata bridgeaction
    ) external {
        uint256 swapAmount = _swap(amountIn, amountOut, path, adapters, msg.sender, address(this), _fee);
        address lastToken = path[path.length - 1];
        IERC20(lastToken).approve(BRIDGE, swapAmount);
        (bool success, bytes memory result) = BRIDGE.call(bridgeaction);
        require(success);
    }

    // function swapFromGASIntoBridge(
    //     Trade calldata _trade,
    //     address _to,
    //     uint256 _fee,
    //     bytes calldata bridgeaction
    // ) external payable {
    //     require(
    //         _trade.path[0] == WGAS,
    //         "Router: Path needs to begin with WGAS"
    //     );
    //     _wrap(_trade.amountIn);
    //     _swap(_trade, address(this), _to, _fee);
    // }

    // function swapToGASBridgeDeposit(
    //     Trade calldata _trade,
    //     address _to,
    //     uint256 _fee,
    //     bytes calldata bridgeaction
    // ) public {
    //     require(
    //         _trade.path[_trade.path.length - 1] == WGAS,
    //         "Router: Path needs to end with WGAS"
    //     );
    //     uint256 returnAmount = _swap(
    //         _trade,
    //         msg.sender,
    //         address(this),
    //         _fee
    //     );
    //     _unwrap(returnAmount);
    //     _returnTokensTo(GAS, returnAmount, _to);
    // }

    // /**
    //  * Swap token to token without the need to approve the first token
    //  */
    // function swapWithPermitBridgeDeposit(
    //     Trade calldata _trade,
    //     address _to,
    //     uint256 _fee,
    //     uint256 _deadline,
    //     uint8 _v,
    //     bytes32 _r,
    //     bytes32 _s,
    //     bytes calldata bridgeaction
    // ) external {
    //     IERC20(_trade.path[0]).permit(
    //         msg.sender,
    //         address(this),
    //         _trade.amountIn,
    //         _deadline,
    //         _v,
    //         _r,
    //         _s
    //     );
    //     swap(_trade, _to, _fee);
    // }

    // /**
    //  * Swap token to GAS without the need to approve the first token
    //  */
    // function swapToGASWithPermit(
    //     Trade calldata _trade,
    //     address _to,
    //     uint256 _fee,
    //     uint256 _deadline,
    //     uint8 _v,
    //     bytes32 _r,
    //     bytes32 _s,
    //     bytes calldata bridgeaction
    // ) external {
    //     IERC20(_trade.path[0]).permit(
    //         msg.sender,
    //         address(this),
    //         _trade.amountIn,
    //         _deadline,
    //         _v,
    //         _r,
    //         _s
    //     );
    //     swapToGAS(_trade, _to, _fee);
    // }
}
