package ch.bbw.addressbook;

import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/**
 * Created by Carina on 07.12.2017.
 */
public class AddressComperator implements java.util.Comparator<Address> {

    @Override
    public int compare(Address a1, Address a2) {
        int resultLastname = a1.getLastname().compareTo(a2.getLastname());
        if (resultLastname == 0){
            int resultFirstname = a1.getFirstname().compareTo(a2.getFirstname());
            if (resultFirstname == 0) {
                return a1.getRegistrationDate().compareTo(a2.getRegistrationDate());
            }else return resultFirstname;
        }else return resultLastname;
    }

    @Override
    public Comparator<Address> reversed() {
        return null;
    }

    @Override
    public Comparator<Address> thenComparing(Comparator<? super Address> other) {
        return null;
    }

    @Override
    public <U> Comparator<Address> thenComparing(Function<? super Address, ? extends U> keyExtractor, Comparator<? super U> keyComparator) {
        return null;
    }

    @Override
    public <U extends Comparable<? super U>> Comparator<Address> thenComparing(Function<? super Address, ? extends U> keyExtractor) {
        return null;
    }

    @Override
    public Comparator<Address> thenComparingInt(ToIntFunction<? super Address> keyExtractor) {
        return null;
    }

    @Override
    public Comparator<Address> thenComparingLong(ToLongFunction<? super Address> keyExtractor) {
        return null;
    }

    @Override
    public Comparator<Address> thenComparingDouble(ToDoubleFunction<? super Address> keyExtractor) {
        return null;
    }
}
