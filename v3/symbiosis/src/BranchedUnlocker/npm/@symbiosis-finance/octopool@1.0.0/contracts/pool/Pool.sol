pragma solidity >=0.8.5;

import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC1155/ERC1155Upgradeable.sol';
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import '../libraries/DSMath.sol';
import '../libraries/SignedSafeMath.sol';
import '../libraries/SafeCast.sol';
import '../interfaces/IFeeCounter.sol';

/**
 * @title Pool
 * @notice Manages deposits, withdrawals and swaps. Holds a mapping of assets and parameters.
 * @dev The main entry-point of octo
 * Note: All variables are 18 decimals, except from that of underlying tokens
 */
contract Pool is
Initializable,
OwnableUpgradeable,
PausableUpgradeable,
ERC1155Upgradeable
{
    using DSMath for uint256;
    using SafeERC20 for IERC20;
    using SignedSafeMath for int256;
    int256 internal constant WAD_I = 10**18;
    uint256 internal constant WAD = 10**18;

    struct AssetOcto {
        uint256 cash;
        uint256 liability;
        uint256 maxSupply;
        uint256 totalSupply;
        uint8 decimals;
        address token;
        bool active;
    }

    struct SwapResult {
        uint256 idealToAmount;
        uint256 actualToAmount;
        uint256 inputLpFeeAmount;
        uint256 outputLpFeeAmount;
        uint256 inputVolumeFeeAmount;
        uint256 outputVolumeFeeAmount;
    }

    mapping(uint256 => AssetOcto) public indexToAsset;
    mapping(address => uint256) public assetToIndex;
    uint256 public lastIndex;

    /* Storage */

    /// @notice Amplification factor
    uint256 public a;

    /// @notice lpFee rate
    uint256 public lpFee;

    /// @notice LP dividend ratio : the ratio of lpFee that should distribute to LP
    uint256 public lpDividendRatio;

    /// @notice The threshold to mint fee (unit: WAD)
    uint256 public mintFeeThreshold;

    /// @notice Dev address
    address public devaddr;

    address public feeTo;

    address public veSIS;

    /// @notice Dividend collected by each asset (unit: WAD)
    mapping(uint256 => uint256) private _feeCollected;

    /// @notice The threshold to get dynamic fee (unit: WAD)
    uint256 public dynamicFeeThreshold;

    /// @notice The Multiplier for dynamic fee (unit: WAD)
    uint256 public dynamicFeeMaximum;

    /// @notice The pow for dynamic fee
    uint256 public dynamicFeePow;

    address public feeCounter;

    address public feeReceiver;


    /* Events */

    /// @notice An event that's emitted when an asset is added to Pool
    event AssetAdded(address indexed token);

    /// @notice An event that's emitted when asset is removed from Pool
    event AssetStatusChanged(address indexed token, bool indexed status);

    /// @notice An event that's emitted when a deposit is made to Pool
    event Deposit(
        address indexed sender,
        address indexed token,
        uint256 amount,
        uint256 liquidity,
        address indexed to
    );

    /// @notice An event that's emitted when a withdrawal is made from Pool
    event Withdraw(
        address indexed sender,
        address indexed token,
        uint256 amount,
        uint256 liquidity,
        address indexed to
    );

    /// @notice An event that's emitted when a swap is made in Pool
    event Swap(
        address indexed sender,
        address fromToken,
        address toToken,
        uint256 fromAmount,
        uint256 toAmount,
        address indexed to
    );

    event NewFeeTo(address indexed addr);

    event NewMintFeeThreshold(uint256 value);
    event NewDynamicFeeParameters(uint256 threshold, uint256 multiplier, uint256 pow);
    event NewFee(uint256 lpDividendRatio);
    event NewA(uint256 value);
    event NewLPFee(uint256 value);
    event NewVeSIS(address indexed newVeSIS);
    event NewMaxSupply(address indexed token, uint256 indexed newMaxSupply);

    event FillPool(address indexed token, uint256 amount);
    event NewFeeCounter(address newFeeCounter);
    event NewFeeReceiver(address _newFeeReceiver);
    event FeeCollected(address token, uint256 amount, uint256 fee);

    /* Modifiers */

    modifier checkAddress(address to) {
        require(to != address(0), 'Zero address');
        _;
    }

    modifier deadlineCheck(uint256 deadline) {
        require(deadline > block.timestamp, 'Deadline not met');
        _;
    }

    /* Initializer */

    /**
     * @notice Initializes pool. Dev is set to be the account calling this function.
     */
    function initialize(uint256 _a, uint256 _lpFee) external initializer {
        __Ownable_init(msg.sender);
        __Pausable_init_unchained();
        __ERC1155_init('https://octonfts.symbiosis.finance/{id}');
        require(_lpFee <= WAD, 'Invalid value');
        require(_a <= WAD, 'Invalid value'); // ampFactor_ should not be set bigger than 1

        a = _a;
        lpDividendRatio = WAD;
        lpFee = _lpFee;
        veSIS = msg.sender;
    }

    // Getters //

    function getFeeCollected(uint256 _asset) external view returns (uint256) {
        return _feeCollected[_asset];
    }

    // Setters //

    /**
    * @notice Changes the pools lpFee. Can only be set by the contract owner.
     * @param _newLpFee new pool's lpFee rate
     */
    function setLPFee(uint256 _newLpFee) external onlyOwner {
        require(_newLpFee <= WAD, 'Invalid value');
        lpFee = _newLpFee;
        emit NewLPFee(_newLpFee);
    }

    /**
     * @notice Changes the pools amplification factor. Can only be set by the contract owner.
     * @param _newA new pool's amplification factor
     */
    function setA(uint256 _newA) external onlyOwner {
        require(_newA <= WAD, 'Invalid value'); // ampFactor_ should not be set bigger than 1
        a = _newA;
        emit NewA(_newA);
    }

    function setFeeRatio(uint256 _newLpDividendRatio) external onlyOwner {
        require(_newLpDividendRatio <= WAD, 'Invalid value');
        _mintAllFee();
        lpDividendRatio = _newLpDividendRatio;
        emit NewFee(_newLpDividendRatio);
    }

    function setFeeCounter(address _newFeeCounter) external onlyOwner {
        feeCounter = _newFeeCounter;
        emit NewFeeCounter(_newFeeCounter);
    }

    function setFeeReceiver(address _newFeeReceiver) external onlyOwner {
        feeReceiver = _newFeeReceiver;
        emit NewFeeReceiver(_newFeeReceiver);
    }

    /**
     * @notice Changes the fee beneficiary. Can only be set by the contract owner.
     * This value cannot be set to 0 to avoid unsettled fee.
     * @param _newFeeTo new fee beneficiary
     */
    function setFeeTo(address _newFeeTo)
    external
    onlyOwner
    checkAddress(_newFeeTo)
    {
        feeTo = _newFeeTo;
        emit NewFeeTo(_newFeeTo);
    }

    /**
     * @notice Set min fee to mint
     */
    function setMintFeeThreshold(uint256 _newMintFeeThreshold)
    external
    onlyOwner
    {
        mintFeeThreshold = _newMintFeeThreshold;
        emit NewMintFeeThreshold(_newMintFeeThreshold);
    }

    /**
     * @notice Set dynamic fee parameters
     */
    function setDynamicFeeParameters(uint256 _newDynamicFeeThreshold, uint256 _newDynamicFeeMaximum, uint256 _newDynamicFeePow)
    external
    onlyOwner
    {
        dynamicFeeThreshold = _newDynamicFeeThreshold;
        dynamicFeeMaximum = _newDynamicFeeMaximum;
        dynamicFeePow = _newDynamicFeePow;
        emit NewDynamicFeeParameters(_newDynamicFeeThreshold, _newDynamicFeeMaximum, _newDynamicFeePow);
    }

    function setVeSISAddress(address _newVeSIS)
    external
    onlyOwner
    checkAddress(_newVeSIS)
    {
        veSIS = _newVeSIS;
        emit NewVeSIS(_newVeSIS);
    }

    function globalEquilCovRatio()
    external
    view
    returns (uint256 equilCovRatio, uint256 invariant)
    {
        int256 invariant;
        int256 SL;
        (invariant, SL) = _globalInvariantFunc();
        uint256 equilCovRatio = int256(
            _equilCovRatio(invariant, SL, int256(a))
        ).toUint256();
        return (equilCovRatio, invariant.toUint256());
    }

    // this function is used to move fund from tip bucket to the pool to keep r* = 1 as error accumulates
    // unit of amount should be in WAD
    function spreadAccumulatedError(uint256 _id, uint256 _amount)
    external
    onlyOwner
    {
        uint256 accumulatedError = IERC20(indexToAsset[_id].token)
        .balanceOf(address(this))
        .toWad(indexToAsset[_id].decimals) -
        indexToAsset[_id].cash -
        _feeCollected[_id];

        require(_amount <= accumulatedError, 'Invalid value');

        indexToAsset[_id].cash += _amount;
        require(
            _isConvertableToInt256(indexToAsset[_id].cash),
            'Impossible to spread accumulated error'
        );
        emit FillPool(indexToAsset[_id].token, _amount);
    }

    /**
     * @notice Send fee collected to the fee beneficiary
     * @param _id The address of the token to collect fee
     */
    function mintFee(uint256 _id) external {
        _mintFee(_id);
    }

    /* Assets */

    function addAssetOcto(
        address _token,
        uint256 _maxSupply,
        uint8 _decimals
    ) external onlyOwner checkAddress(_token) {
        require(
            indexToAsset[assetToIndex[_token]].token != _token,
            'Asset has already been added'
        );

        indexToAsset[lastIndex] = AssetOcto({
            cash: 0,
            liability: 0,
            token: _token,
            totalSupply: 0,
            maxSupply: _maxSupply.toWad(_decimals),
            active: true,
            decimals: _decimals
        });
        assetToIndex[_token] = lastIndex++;

        emit AssetAdded(_token);
    }

    function changeMaxSupply(uint256 _tokenID, uint256 _newMaxSupply)
    external
    onlyOwner
    {
        uint256 newMaxSupplyWad = _newMaxSupply.toWad(
            indexToAsset[_tokenID].decimals
        );
        require(
            _isConvertableToInt256(newMaxSupplyWad),
            'New max supply too high'
        );
        require(
            indexToAsset[_tokenID].cash <= newMaxSupplyWad,
            'Current balance exceeds given maxSupply'
        );
        indexToAsset[_tokenID].maxSupply = newMaxSupplyWad;

        emit NewMaxSupply(indexToAsset[_tokenID].token, newMaxSupplyWad);
    }

    /**
     * @notice Removes asset from asset struct
     * @dev Can only be called by owner
     * @param _id The id of token to remove
     */
    function setAssetStatus(uint256 _id, bool _active) external onlyOwner {
        if (indexToAsset[_id].active != _active) {
            indexToAsset[_id].active = _active;
            emit AssetStatusChanged(indexToAsset[_id].token, _active);
        }
    }

    /* Pause/unpause */
    /**
     * @dev pause pool, restricting certain operations
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @dev unpause pool, enabling certain operations
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /* Deposit and withdraw */

    /**
     * @notice Deposits amount of tokens into pool ensuring deadline
     * @dev Asset needs to be created and added to pool before any operation. This function assumes tax free token.
     * @param _id The token address to be deposited
     * @param _amount The amount to be deposited
     * @param _to The user accountable for deposit, receiving the  assets (lp)
     * @param _deadline The deadline to be respected
     * @return liquidity Total asset liquidity minted
     */
    function deposit(
        uint256 _id,
        uint256 _amount,
        uint256 _minimumLiquidity,
        address _to,
        uint256 _deadline
    )
    external
    whenNotPaused
    deadlineCheck(_deadline)
    checkAddress(_to)
    returns (uint256 liquidity, uint256 fee)
    {
        require(indexToAsset[_id].active, 'Asset was deactivated by owner');
        require(
            indexToAsset[_id].cash +
            _amount.toWad(indexToAsset[_id].decimals) <=
            indexToAsset[_id].maxSupply,
            'Forbidden: max supply exceeded'
        ); // new cash value is less than int256.max (maxSupply is less than int256.max)

        // collect fee before deposit
        _mintFee(_id);

        uint256 liabilityToMint;
        (liquidity, liabilityToMint, fee) = _exactDepositToInEquil(
            _id,
            _amount.toWad(indexToAsset[_id].decimals)
        );

        require(_minimumLiquidity < liquidity, 'Amount too low');
        require(
            _isConvertableToInt256(
                indexToAsset[_id].liability + liabilityToMint
            ),
            'Liability too high'
        );

        indexToAsset[_id].cash += _amount.toWad(indexToAsset[_id].decimals);
        indexToAsset[_id].liability += liabilityToMint;
        indexToAsset[_id].totalSupply += liquidity;

        _mint(_to, _id, liquidity, '');

        IERC20(indexToAsset[_id].token).safeTransferFrom(
            address(msg.sender),
            address(this),
            _amount
        );

        emit Deposit(
            msg.sender,
            indexToAsset[_id].token,
            _amount,
            liquidity,
            _to
        );
    }

    /**
     * @notice Withdraws liquidity amount of asset to `to` address ensuring minimum amount required
     * @param _id The token to be withdrawn
     * @param _liquidity The liquidity to be withdrawn
     * @param _minAmount The minimum amount that will be accepted by user
     * @param _to The user receiving the withdrawal
     * @param _deadline The deadline to be respected
     * @return amount The total amount withdrawn
     */
    function withdraw(
        uint256 _id,
        uint256 _liquidity,
        uint256 _minAmount,
        address _to,
        uint256 _deadline
    )
    external
    deadlineCheck(_deadline)
    checkAddress(_to)
    returns (uint256 amount, uint256 fee)
    {
        AssetOcto storage asset = indexToAsset[_id];

        _burn(msg.sender, _id, _liquidity);
        _mintFee(_id);

        {
            uint256 liabilityToBurn;

            (amount, liabilityToBurn, fee) = _withdrawFrom(_id, _liquidity);
            require(
                _minAmount.toWad(asset.decimals) < amount,
                'Amount too low'
            );

            asset.cash -= amount;
            asset.liability -= liabilityToBurn;
            asset.totalSupply -= _liquidity;

            // revert if cov ratio < 1% to avoid precision error
            require(
                asset.liability <= 0 ||
                asset.cash.wdiv(asset.liability) >= WAD / 100,
                'Forbidden'
            );

            IERC20(asset.token).safeTransfer(
                _to,
                amount.fromWad(asset.decimals)
            );
        }

        emit Withdraw(
            _to,
            asset.token,
            amount.fromWad(asset.decimals),
            _liquidity,
            _to
        );
    }

    /* Swap */
    /**
     * @notice Swap fromToken for toToken, ensures deadline and minimumToAmount and sends quoted amount to `to` address
     * @dev This function assumes tax free token.
     * @param _fromID The token being inserted into Pool by user for swap
     * @param _toID The token wanted by user, leaving the Pool
     * @param _fromAmount The amount of from token inserted
     * @param _minToAmount The minimum amount that will be accepted by user as result
     * @param _to The user receiving the result of swap
     * @param _deadline The deadline to be respected
     */
    function swap(
        uint256 _fromID,
        uint256 _toID,
        uint256 _fromAmount,
        uint256 _minToAmount,
        address _to,
        uint256 _deadline
    )
    external
    whenNotPaused
    deadlineCheck(_deadline)
    checkAddress(_to)
    returns (
        uint256 actualToAmount,
        uint256 lpFeeAmount
    )
    {
        AssetOcto memory fromAsset = indexToAsset[_fromID];
        AssetOcto memory toAsset = indexToAsset[_toID];

        require(fromAsset.active, "Asset was deactivated by owner");
        require(toAsset.active, "Asset was deactivated by owner");
        require(fromAsset.token != toAsset.token, "Same address");

        require(
            fromAsset.cash + _fromAmount.toWad(fromAsset.decimals) <= fromAsset.maxSupply,
            "Forbidden: max supply exceeded"
        );

        // Call internal swap
        SwapResult memory swapResult = _swap(
            _fromID,
            _toID,
            _fromAmount.toWad(fromAsset.decimals),
            _minToAmount.toWad(toAsset.decimals)
        );

        // Convert back to asset decimals
        actualToAmount = swapResult.actualToAmount.fromWad(toAsset.decimals);

        // Do transfers
        IERC20(fromAsset.token).safeTransferFrom(
            msg.sender,
            address(this),
            _fromAmount
        );
        IERC20(toAsset.token).safeTransfer(
            _to,
            actualToAmount
        );

        if(feeReceiver != address(0)){
            IERC20(fromAsset.token).safeTransfer(
                feeReceiver,
                swapResult.inputVolumeFeeAmount.fromWad(fromAsset.decimals)
            );
            IERC20(toAsset.token).safeTransfer(
                feeReceiver,
                swapResult.outputVolumeFeeAmount.fromWad(toAsset.decimals)
            );
        }

        emit Swap(
            msg.sender,
            fromAsset.token,
            toAsset.token,
            _fromAmount,
            actualToAmount,
            _to
        );

        emit FeeCollected(fromAsset.token, _fromAmount, swapResult.inputVolumeFeeAmount.fromWad(fromAsset.decimals));
        emit FeeCollected(toAsset.token, swapResult.idealToAmount.fromWad(toAsset.decimals), swapResult.outputVolumeFeeAmount.fromWad(toAsset.decimals));
    }

    /* Internal and private methods */

    /**
     * expect fromAmount and minimumToAmount to be in WAD
     */
    function _swap(
        uint256 fromAsset,
        uint256 toAsset,
        uint256 fromAmount,
        uint256 minimumToAmount
    ) internal returns (SwapResult memory swapResult) {
        require(
            _isConvertableToInt256(fromAmount + indexToAsset[fromAsset].cash),
            'Initial amount too high'
        );
        (uint256 idealToAmount, uint256 actualToAmount, uint256 inputLpFeeAmount, uint256 outputLpFeeAmount, uint256 inputVolumeFeeAmount, uint256 outputVolumeFeeAmount) = _quoteFrom(
            fromAsset,
            toAsset,
            SafeCast.toInt256(fromAmount)
        );
        require(minimumToAmount < actualToAmount, 'Amount too low');

        _feeCollected[fromAsset] += inputLpFeeAmount;
        _feeCollected[toAsset] += outputLpFeeAmount;

        indexToAsset[fromAsset].cash += fromAmount - inputLpFeeAmount - inputVolumeFeeAmount;
        indexToAsset[toAsset].cash -= actualToAmount + outputLpFeeAmount + outputVolumeFeeAmount;

        // revert if cov ratio < 1% to avoid precision error
        require(
            uint256(indexToAsset[toAsset].cash).wdiv(
                indexToAsset[toAsset].liability
            ) >= WAD / 100,
            'Forbidden'
        );
        swapResult = SwapResult(idealToAmount, actualToAmount, inputLpFeeAmount, outputLpFeeAmount, inputVolumeFeeAmount, outputVolumeFeeAmount);
    }

    /**
     * @notice Solve quadratic equation
     * @dev This function always returns >= 0
     * @param b quadratic equation b coefficient
     * @param c quadratic equation c coefficient
     * @return x
     */
    function _solveQuad(int256 b, int256 c) internal pure returns (int256) {
        return (((b * b) + (c * 4 * WAD_I)).sqrt(b) - b) / 2;
    }

    function _equilCovRatio(
        int256 D,
        int256 SL,
        int256 A
    ) internal pure returns (int256 er) {
        int256 b = -(D.wdiv(SL));
        er = _solveQuad(b, A);
    }

    /**
     * This function calculate the exactly amount of liquidity of the deposit. Assumes r* = 1
     */
    function _exactDepositToInEquil(uint256 id, uint256 amount)
    internal
    view
    returns (
        uint256 lpTokenToMint,
        uint256 liabilityToMint,
        uint256 reward
    )
    {
        int256 amountI = SafeCast.toInt256(amount);
        int256 cashI = SafeCast.toInt256(indexToAsset[id].cash);
        int256 liabilityI = SafeCast.toInt256(indexToAsset[id].liability);
        int256 aI = int256(a); // a can't be greater than WAD, conversion is safe
        reward = 0;

        if (liabilityI == 0) {
            // if this is a deposit, there is no reward/fee
            // if this is a withdrawal, it should have been reverted
            liabilityToMint = amount;
        } else {
            require(cashI + amountI >= 0, 'Invalid value'); // impossible

            int256 r_i = cashI.wdiv(liabilityI);
            int256 k = amountI + cashI;
            int256 b = k.wmul(WAD_I - aI) + 2 * aI.wmul(liabilityI);
            int256 c = k.wmul(cashI - (aI * liabilityI) / r_i) -
            k.wmul(k) +
            aI.wmul(liabilityI).wmul(liabilityI);
            int256 l = b * b - 4 * aI * c;
            liabilityToMint = ((-b + l.sqrt(b)).wdiv(aI) / 2).toUint256();
        }

        if (liabilityToMint >= amount) {
            reward = liabilityToMint - amount;
        } else {
            // rounding error
            liabilityToMint = amount;
        }

        // Calculate amount of LP to mint : ( deposit + reward ) * TotalAssetSupply / Liability
        uint256 liability = indexToAsset[id].liability;
        lpTokenToMint = (
            liability == 0
                ? liabilityToMint
                : (liabilityToMint * indexToAsset[id].totalSupply) / liability
        );
    }

    function _globalInvariantFunc()
    internal
    view
    returns (int256 D, int256 SL)
    {
        int256 A = int256(a); //  // a can't be greater than WAD, conversion is safe

        for (uint256 i = 0; i < lastIndex; i++) {
            // overflow is unrealistic
            int256 A_i = SafeCast.toInt256(uint256(indexToAsset[i].cash));
            int256 L_i = SafeCast.toInt256(uint256(indexToAsset[i].liability));

            // Assume when L_i == 0, A_i always == 0
            if (L_i == 0) {
                // avoid division of 0
                continue;
            }

            int256 r_i = A_i.wdiv(L_i);
            SL += L_i;
            D += L_i.wmul(r_i - A.wdiv(r_i));
        }
    }

    function _mintAllFee() internal {
        for (uint256 i = 0; i < lastIndex; i++) {
            _mintFee(i);
        }
    }

    /**
     * @notice Calculates fee and liability to burn in case of withdrawal
     * @param _id The asset willing to be withdrawn
     * @param _liquidity The liquidity willing to be withdrawn
     * @return amount Total amount to be withdrawn from Pool
     * @return liabilityToBurn Total liability to be burned by Pool
     * @return fee
     */
    function _withdrawFrom(uint256 _id, uint256 _liquidity)
    private
    view
    returns (
        uint256 amount,
        uint256 liabilityToBurn,
        uint256 fee
    )
    {
        liabilityToBurn =
        (indexToAsset[_id].liability * _liquidity) /
        indexToAsset[_id].totalSupply;
        require(liabilityToBurn != 0, 'Zero liquidity');
        int256 liabilityToBurnI = -SafeCast.toInt256(liabilityToBurn);
        int256 cashI = SafeCast.toInt256(indexToAsset[_id].cash);
        int256 liabilityI = SafeCast.toInt256(indexToAsset[_id].liability);
        int256 ampFactorI = int256(a);  // a can't be greater than WAD, conversion is safe

        int256 L_i_ = liabilityI + liabilityToBurnI;
        int256 r_i = cashI.wdiv(liabilityI);
        int256 rho = liabilityI.wmul(r_i - ampFactorI.wdiv(r_i));
        int256 beta = (rho + liabilityToBurnI.wmul(WAD_I - ampFactorI)) / 2;
        int256 A_i_ = beta +
        (beta * beta + ampFactorI.wmul(L_i_ * L_i_)).sqrt(beta);
        amount = (cashI - A_i_).toUint256();

        if (liabilityToBurn >= amount) {
            fee = liabilityToBurn - amount;
        } else {
            // rounding error
            amount = liabilityToBurn;
        }
    }

    /**
     * @notice Quotes the actual amount user would receive in a swap, taking in account slippage and lpFeeAmount
     * @param fromAsset The initial asset
     * @param toAsset The asset wanted by user
     * @param fromAmount The amount to quote
     */
    function _quoteFrom(
        uint256 fromAsset,
        uint256 toAsset,
        int256 fromAmount
    ) private view returns (
        uint256 idealToAmount,
        uint256 actualToAmount,
        uint256 inputLpFeeAmount,
        uint256 outputLpFeeAmount,
        uint256 inputVolumeFeeAmount,
        uint256 outputVolumeFeeAmount
    ) {
        (fromAmount, inputLpFeeAmount, inputVolumeFeeAmount) = _computeInputFees(fromAsset, fromAmount);

        idealToAmount = _computeIdealToAmount(
            fromAsset,
            toAsset,
            fromAmount
        );

        require(indexToAsset[toAsset].cash >= idealToAmount, "Not enough cash");

        (outputLpFeeAmount, outputVolumeFeeAmount, actualToAmount) = _computeOutputFees(
            toAsset,
            idealToAmount,
            fromAmount
        );
    }

    function _computeInputFees(
        uint256 fromAsset,
        int256 fromAmount
    ) internal view returns (
        int256 adjustedAmount,
        uint256 inputLpFeeAmount,
        uint256 inputVolumeFeeAmount
    ) {
        IFeeCounter.Fees memory fees;
        if (feeCounter == address(0)) {
            fees.volumeFee = 0;
            fees.poolFee = 0;
        } else {
            fees = IFeeCounter(feeCounter).calculateInputFee(
                fromAsset,
                indexToAsset[fromAsset].liability,
                indexToAsset[fromAsset].cash,
                indexToAsset[fromAsset].cash + uint256(fromAmount)
            );
        }

        inputVolumeFeeAmount = uint256(fromAmount.wmul(int256(fees.volumeFee)));
        inputLpFeeAmount = uint256(fromAmount.wmul(int256(fees.poolFee)));

        adjustedAmount = fromAmount - fromAmount.wmul(int256(fees.volumeFee + fees.poolFee));
    }

    function _computeIdealToAmount(
        uint256 fromAsset,
        uint256 toAsset,
        int256 adjustedFromAmount
    ) internal view returns (uint256 idealToAmount) {
        uint256 toCash = indexToAsset[toAsset].cash;

        int256 toCashI = SafeCast.toInt256(toCash);
        int256 fromCashI = SafeCast.toInt256(indexToAsset[fromAsset].cash);
        int256 fromLiabilityI = SafeCast.toInt256(indexToAsset[fromAsset].liability);
        int256 toLiabilityI = SafeCast.toInt256(indexToAsset[toAsset].liability);
        int256 ampFactorI = int256(a);

        require(toLiabilityI != 0 && fromLiabilityI != 0, "Invalid value");

        int256 D = fromCashI + toCashI
        - ampFactorI.wmul(
            (fromLiabilityI * fromLiabilityI) / fromCashI
            + (toLiabilityI * toLiabilityI) / toCashI
        );

        int256 rx_ = (fromCashI + adjustedFromAmount).wdiv(fromLiabilityI);
        int256 b = (fromLiabilityI * (rx_ - ampFactorI.wdiv(rx_))) / toLiabilityI - D.wdiv(toLiabilityI);
        int256 ry_ = _solveQuad(b, ampFactorI);
        int256 Dy = toLiabilityI.wmul(ry_) - toCashI;

        idealToAmount = Dy < 0 ? uint256(-Dy) : uint256(Dy);
    }

    function _computeOutputFees(
        uint256 toAsset,
        uint256 idealToAmount,
        int256 fromAmount
    ) internal view returns (
        uint256 outputLpFeeAmount,
        uint256 outputVolumeFeeAmount,
        uint256 actualToAmount
    ) {
        IFeeCounter.Fees memory fees;
        if (feeCounter == address(0)) {
            fees.volumeFee = 0;
            fees.poolFee = lpFee;
        } else {
            uint256 toCash = indexToAsset[toAsset].cash;

            fees = IFeeCounter(feeCounter).calculateOutputFee(
                toAsset,
                indexToAsset[toAsset].liability,
                toCash,
                toCash - idealToAmount
            );
        }

        outputLpFeeAmount = idealToAmount.wmul(fees.poolFee);
        outputVolumeFeeAmount = idealToAmount.wmul(fees.volumeFee);

        actualToAmount = idealToAmount - idealToAmount.wmul(fees.volumeFee + fees.poolFee);
    }

    function _isConvertableToInt256(uint256 _value)
    private
    view
    returns (bool)
    {
        return _value < uint256(type(int256).max);
    }

    /**
     * @notice Private function to send fee collected to the fee beneficiary
     * @param id The address of the asset to collect fee
     */
    function _mintFee(uint256 id) private {
        uint256 feeCollected = _feeCollected[id];
        if (feeCollected == 0 || feeCollected < mintFeeThreshold) {
            // early return
            return;
        }
        uint256 dividend;
        {
            // dividend to veSIS
            dividend = feeCollected.wmul(WAD - lpDividendRatio);

            if (dividend > 0) {
                IERC20(indexToAsset[id].token).safeTransfer(
                    veSIS,
                    dividend.fromWad(indexToAsset[id].decimals)
                );
            }
        }
        {
            // dividend to LP
            uint256 lpDividend = feeCollected - dividend;
            if (lpDividend > 0) {
                // exact deposit to maintain r* = 1
                // increase the value of the LP token, i.e. assetsPerShare
                (, uint256 liabilityToMint, ) = _exactDepositToInEquil(
                    id,
                    lpDividend
                );
                indexToAsset[id].liability += liabilityToMint;
                indexToAsset[id].cash += lpDividend;
            }
        }

        _feeCollected[id] = 0;
    }
}
