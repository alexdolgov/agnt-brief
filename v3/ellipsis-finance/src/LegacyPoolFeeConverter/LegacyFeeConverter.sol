pragma solidity 0.8.12;

import "IERC20.sol";
import "SafeERC20.sol";

interface IStableSwap {
    function exchange(int128 i, int128 j, uint dx, uint min_dy) external;
    function coins(uint i) external returns (IERC20);
    function base_pool() external returns (IStableSwap);
    function remove_liquidity_one_coin(uint256 amount, int128 i, uint256 min_amount) external;
}

interface IFactory {
    function fee_receiver() external view returns (address);
}

interface IFeeDistributor {
    function depositFee(IERC20 token, uint256 amount) external returns (bool);
}

interface WBNB {
    function deposit() external payable;
}

contract LegacyPoolFeeConverter {
    using SafeERC20 for IERC20;

    IFactory public constant factory = IFactory(0xf65BEd27e96a367c61e0E06C54e14B16b84a5870);
    address public constant wBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;

    receive () external payable {}

    function convertFees(uint i, uint j) external {
        IERC20 inputCoin = IStableSwap(msg.sender).coins(i);
        IERC20 outputCoin = IStableSwap(msg.sender).coins(j);

        uint256 balance = inputCoin.balanceOf(address(this));
        inputCoin.safeApprove(msg.sender, balance);
        IStableSwap(msg.sender).exchange(int128(int(i)), int128(int(j)), balance, 0);
    }

    function notify(IERC20 coin) public {
        if (address(coin) == 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) {
            uint256 balance = address(this).balance;
            WBNB(wBNB).deposit{value: balance }();
            coin = IERC20(wBNB);
        }

        uint256 balance = coin.balanceOf(address(this));
        address feeDistributor = factory.fee_receiver();

        if (feeDistributor != address(0)) {
            coin.safeApprove(feeDistributor, balance);
            IFeeDistributor(feeDistributor).depositFee(coin, balance);
        }
    }
}
