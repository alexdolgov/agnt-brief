pragma solidity 0.8.18;

import { L2StandardERC20 } from "./L2StandardERC20.sol";

contract CoinToken is L2StandardERC20 {
    constructor(
      address _l2Bridge,
      address _l1Token
    )
    L2StandardERC20(_l2Bridge, _l1Token, "Baby Doge Coin", "BabyDoge", 9)
    {
    }
}