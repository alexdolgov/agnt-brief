import { Auth, GlobalACL } from "../Auth.sol";
import { ERC20 } from "solmate/tokens/ERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { StorageViewer } from "./StorageViewer.sol";
import { TOKEN_USDC_NATIVE, TOKEN_WETH } from "src/constants.sol";

using SafeTransferLib for ERC20;

contract FeeReserve is GlobalACL {
    error FeeReserve__BalanceNotEnough();
    error FeeReserve__AlreadyClaimed();

    StorageViewer public immutable storageViewer;
    uint256 public usdcFeePerEpoch;
    uint256 public wethFeePerEpoch;
    address public keeper;
    mapping(uint256 => bool) claimed;

    constructor(Auth _auth, StorageViewer _storageViewer, uint256 _usdcFee, uint256 _wethFee, address _keeper)
        GlobalACL(_auth)
    {
        storageViewer = _storageViewer;
        usdcFeePerEpoch = _usdcFee;
        wethFeePerEpoch = _wethFee;
        keeper = _keeper;
    }

    function setFeesPerEpoch(uint256 _usdcFee, uint256 _wethFee) external onlyConfigurator {
        usdcFeePerEpoch = _usdcFee;
        wethFeePerEpoch = _wethFee;
    }

    function setKeeper(address _keeper) external onlyConfigurator {
        keeper = _keeper;
    }

    function pullAsset(address _asset, uint256 _amt, bool _revert) external onlyAggregateVault returns (uint256) {
        return _transfer(_asset, msg.sender, _amt, _revert);
    }

    function pullKeeperFees() external onlyAggregateVault {
        uint256 currentEpoch = storageViewer.getEpoch();
        if (claimed[currentEpoch]) {
            revert FeeReserve__AlreadyClaimed();
        }
        claimed[currentEpoch] = true;
        _transfer(TOKEN_USDC_NATIVE, keeper, usdcFeePerEpoch, false);
        _transfer(TOKEN_WETH, keeper, wethFeePerEpoch, false);
    }

    function _transfer(address _asset, address _to, uint256 _amt, bool _revert) internal returns (uint256) {
        uint256 balance = ERC20(_asset).balanceOf(address(this));
        if (_amt > balance && _revert) revert FeeReserve__BalanceNotEnough();
        uint256 amtToSend = _amt > balance ? balance : _amt;
        if (amtToSend > 0) {
            ERC20(_asset).safeTransfer(_to, amtToSend);
        }
        return amtToSend;
    }
}
