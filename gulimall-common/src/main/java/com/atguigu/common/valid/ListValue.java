package com.atguigu.common.valid;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.*;
import static java.lang.annotation.ElementType.TYPE_USE;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

@Documented
@Target({METHOD, FIELD, ANNOTATION_TYPE, CONSTRUCTOR, PARAMETER, TYPE_USE})
@Retention(RUNTIME)
@Constraint(validatedBy = {ListValueConstraintValidator.class})
public @interface ListValue {
    //默认的提示语句
    String message() default "{com.atguigu.common.valid.ListValue.message}";

    //适用于那种情况
    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

    //判断的值
    int[] vals() default {};
}
